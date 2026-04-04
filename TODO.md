- aur helper
- vscode
- setup home repo backups
- GNU Stow

## Bash:
Setup new machine:

1. Install from list:
```bash
pacman -S --needed $(comm -12 <(pacman -Slq | sort) <(sort packages.txt ))
sudo pacman -S --needed - < packages.txt
```


## Fish (CachyOS):
1. Install non-AUR packages:
```fish
pacman -Slq | sort > /tmp/available_pkgs
sort packages.txt > /tmp/desired_pkgs
pacman -S --needed (comm -12 /tmp/available_pkgs /tmp/desired_pkgs)
rm /tmp/available_pkgs /tmp/desired_pkgs
```

2. Add pacman hook to /etc/pacman.d/hooks

```
[Trigger]
Operation = Install
Operation = Remove
Type = Package
Target = *

[Action]
When = PostTransaction
Exec = /bin/sh -c '/usr/bin/pacman -Qqe > /home/will/code/arch/packages.txt'
```