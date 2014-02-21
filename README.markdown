pastebin-vim
============


Requirements
------------

vim needs to have been compiled with python support.

Installation
------------

cp pastebin.vim ~/.vim/plugin/

Usage
-----

:PasteCode
will paste the currently selected code. That's it.

:PasteFile
will paste the current buffer in its entirety.

F2 is mapped by default to :PasteCode in visual mode.

There's no mapping to :PasteFile because it's potentially a big privacy issue if you publish your work accidentally.

Configuration
-------------

Configuration is held in the plugin file itself. There's not much to it.
You can choose to specify your pastebin username (eg "anonymous") or 
set it to pick up your login name ("auto")
You may also set a custom subdomain, but this isn't actually required.

credits
-------

Original credit goes to djcraven, using the old-style API.
[http://djcraven5.blogspot.com/2006/10/vimpastebin-post-to-pastebin-from.html](http://djcraven5.blogspot.com/2006/10/vimpastebin-post-to-pastebin-from.html)

Snufkin put it on github in a usable format after making it use the current
pastebin API.
[https://github.com/snufkin/pastebin.vim](https://github.com/snufkin/pastebin.vim)

