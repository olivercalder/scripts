# scripts
Scripts I wrote to make each of my various machines more usable on a daily basis.

If running on PopOS or some other system which disables Wayland in gdm by default, two changes are recommended:

- Comment out the line `WaylandEnable=False` in `/etc/gdm3/custom.conf`
- Add Firefox Wayland support in `~/.profile`:

```bash
# Appended to the end of ~/.profile

if [[ $XDG_SESSION_TYPE == "wayland" ]]; then
    export MOZ_ENABLE_WAYLAND=1
fi
```
