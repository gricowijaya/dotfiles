# GNU/Linux Configuration

## Notes

This configuration can be used in GNU/Linux OS  

There's two neovim configuration, using lua and vimscript. Choose whatever you like.

use calcurse to manage your time.

I recommend you to install all these tools

- wal
- i3wm 
- dwm
- st
- ranger
- polybar
- nerdfont
- neovim
- pywalfox

### DWM

Using dwm can be intimidating at first but it's actually pretty fun but i recommend to learn i3wm if you are new to the world of window manager. If you want to try dwm just do this command 

    sudo cp -r suckless/ ~/.local/src;

After that just go to your home directory and do  

    cd ~; cd .local/src/suckless/; cd dwm/; sudo make install clean

In this config i just use slstatus for the statusbar you can use dwmblocks, polybar etc.

If you are at ubuntu u can change the .xinitrc to .xsessionrc
