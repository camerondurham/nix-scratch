# nix-scratch
try to learn some nix

## 1. first nix command

```sh
 nix-shell -p nix-info --run "nix-info -m"
 - system: `"x86_64-darwin"`
 - host os: `Darwin 21.5.0, macOS 10.16`
 - multi-user?: `yes`
 - sandbox: `no`
 - version: `nix-env (Nix) 2.9.1`
 - channels(root): `"nixpkgs"`
 - nixpkgs: `/nix/var/nix/profiles/per-user/root/channels/nixpkgs`
```

## 2. garbage collection

From: [package-management/garbage-collection](https://nixos.org/manual/nix/stable/package-management/garbage-collection.html)

`nix-env` operations never absolutwactually delete packages from the system.

To delete all old (non-current) generations of your profile:

```sh
$ nix-env --delete-generations old
```

Or specify how many days

```sh
$ nix-env --delete-generations 14d
```

After removing generations you can run garbage collector:
```sh
$ nix-store --gc
```

## 3. template

[nix-dot-dev/getting-started-nix-template](https://github.com/nix-dot-dev/getting-started-nix-template)
