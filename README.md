# Emacs All The Icons Fonts

This Nix package installs the icon fonts required by the `nerd-icons` package for Emacs, enhancing the presentation of information with visually appealing icons.

## Installation

To install this package using Nix, you can include it in your Nix configurations. Typically, you would add it to your `environment.systemPackages` in `/etc/nixos/configuration.nix` for NixOS, or manage it via `home-manager` for personal setups.

Here's an example snippet on how you could add this package:

```nix
{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Other packages
    (pkgs.callPackage (pkgs.fetchFromGitHub {
        owner = "not-in-stock";
        repo = "emacs-nerd-icons-fonts";
        rev = "...";
        sha256 = "sha256-+rXA4Ipv3Cm7okh4jYON+J0e2Go+aZzJJCM9rvSf8mc=";
    }) {})
  ];
}
```
## Links
- Original emacs package repo: [nerd-icons.el](https://github.com/rainstormstudio/nerd-icons.el)
