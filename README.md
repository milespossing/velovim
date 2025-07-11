# NixVim Configuration

This repository contains my [NixVim](https://github.com/nix-community/nixvim) configuration. It is provided as a [Nix](https://nixos.org/) flake that can be run directly or included in your system configuration.

## Usage

### Run with `nix run`

Use `nix run` to start Neovim using this configuration without installing anything globally:

```bash
nix run github:USERNAME/velovim
```

Replace the flake URL with your desired reference (for example `.` if you cloned the repository).

### Home Manager Module

The flake exposes a Home Manager module. Import it and enable `velovim` in your `home.nix`:

```nix
{ inputs, ... }:
{
  imports = [ inputs.velovim.homeModules.default ];

  velovim.enable = true;
}
```

Apply the changes with `home-manager switch`.
