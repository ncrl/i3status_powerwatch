# i3status_powerwatch
## How to start?
1. Place script in bin path (`/usr/local/bin/` for example);
2. Edit your i3 config - (`~/.config/i3/config` in most cases). Change line:
```
        status_command i3status
```
to
```
        status_command /usr/local/bin/i3status.sh 
```
3. Reload configuration for your i3. (`powerkey+shift+r` by default)
