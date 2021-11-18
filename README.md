tmux-iconbar
============

This tmux Plugin add a customizable iconbar to your tmux statusline.

Requirements
------------

Before you start you need some kind of icon font e.g.:

* [nerd-font](https://github.com/ryanoasis/nerd-fonts)


Installation
------------

Using [tpm](https://github.com/tmux-plugins/tpm):

Add this to your '.tmux.conf'-File
```tmux
set -g @plugin 'kruemelmann/tmux-iconbar'
```

Usage
-----

Now if the plugin is installed you get a format string
```tmux
set -g status-right '#{@iconbar_state}'
```
Reload the config and et voila you have some nice looking icons


Default Icons
-------------

Currently tmux-iconbar can detect if docker is running and if you are connected to the internet.:)
If you have some ideas on what it could do let me know.

Adding custom scripts
---------------------

You can add your own scripts by placeing them in the folder 'scripts/custom'.
You can find a template on how to write the scripts in there too.


---
**NOTE**

This plugin calles shellscripts so watch what you let it execute;)
---

## License
[MIT](https://choosealicense.com/licenses/mit/)
