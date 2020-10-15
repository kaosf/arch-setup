Run as a root user

```
pacman -S vim sudo

EDITOR=vim visudo
```

Add

```
username ALL=(ALL) ALL
```

DANGEROUS

```
username ALL=(ALL) NOPASSWD: ALL
```
