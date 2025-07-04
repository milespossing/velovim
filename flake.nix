{
  description = "A nixvim configuration";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = inputs @ { self, nixvim, flake-utils, nixpkgs, ... }:
    let
      inherit (flake-utils.lib) eachDefaultSystem;
    in
    {
      homeManagerModules.default = import ./modules/home-manager.nix;
      nixosModules.default = import ./modules/nixos.nix;
    } // eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true;
        };
        nixvim' = nixvim.legacyPackages.${system};
        nixvimModule = {
          inherit pkgs;
          module = import ./config;
        };
        nvim = nixvim'.makeNixvimWithModule nixvimModule;
      in
      {
        checks.default = nixvim.lib.${system}.check.mkTestDerivationFromNixvimModule nixvimModule;
        packages.default = nvim;
      });
}
