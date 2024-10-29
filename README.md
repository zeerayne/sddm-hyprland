# sddm-hyprland

- SDDM wayland on Hyprland Compositor 
- HyDE's sddm wayland configuration

# Installation 

Base installation guide for sddm-hyprland.
This should work on any distro that has sddm and hyprland installed.

### Manual (makefile)
    
    ```bash
    git clone https://github.com/HyDE-Project/sddm-hyprland
    cd sddm-hyprland
    sudo make install
    ```

### Archlinux (AUR)

<!-- 
    ```bash
    yay -S sddm-hyprland
    ``` -->

> Not available yet

# Configuration

sddm-hyprland exposes these optional files and directories for configuration: 

> It is on the user to create these file/s and directory and be organized.

``` bash
/var/tmp/hypr/hyprland.conf 
/etc/sddm.conf.d/hypr/monitors.conf
/etc/sddm.conf.d/hypr/monitors/*.conf
```

> I would recommend to use `/var/tmp/hypr/hyprland.conf` to avoid permission issues. 


### Keyboard layouts

[Configuring keyboard layouts in hyprland ](https://wiki.hyprland.org/Configuring/Keyboard/)

```hyprlang
input:kb_layout = "us"

```
> I never tested this as I don't have a keyboard with a different layout.

### Monitors

 https://wiki.hyprland.org/Configuring/Monitors/

By default, this configuration will use all available monitors. 
You can override this by disabling the monitor.
You can also solve some scaling issue specific to your monitor.

# TODO
- [X] Separate sddm-hyprland and hyde configuration 
- [ ] Package manager support (AUR)

# Support

- Reporting relevant issues are appreciated 
- Bug fixes are welcome
- We could talk about feature requests


  [![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/A0A3TECUZ) 



