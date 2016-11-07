# # Default
# xdg-mime query default text/html
# #=> userapp-Firefox-??????.desktop
# xdg-mime query default x-scheme-handler/http
# #=> userapp-Firefox-??????.desktop
# xdg-mime query default x-scheme-handler/https
# #=> userapp-Firefox-??????.desktop

# # Set
# xdg-mime default firefox.desktop text/html
# xdg-mime default firefox.desktop x-scheme-handler/http
# xdg-mime default firefox.desktop x-scheme-handler/https

# # Set 2
# yaourt -S midori
# xdg-mime default midori.desktop text/html
# xdg-mime default midori.desktop x-scheme-handler/http
# xdg-mime default midori.desktop x-scheme-handler/https

# ref.
# http://cocu.hatenablog.com/entry/2014/09/20/224028
# http://linux.die.net/man/1/xdg-mime

# Set default file manager
# ref. https://wiki.archlinuxjp.org/index.php/Xdg-open
xdg-mime default pcmanfm.desktop inode/directory
