pastevim
============


Requirements
------------

vim needs to have been compiled with perl support.

Perl Module

WWW::Pastebin::PastebinCom::API

Installation
------------

With pathogen

cd ~/.vim/bundle

git clone https://github.com/overdrive3000/pastevim.git

Usage
-----

:PasteCode
will paste the currently selected code. That's it.

F2 is mapped by default to :PasteCode in visual mode.


credits
-------

This is a perl version using the new pastebin.com API, the original version is in python.

Original credit goes to djcraven, using the old-style API.
[http://djcraven5.blogspot.com/2006/10/vimpastebin-post-to-pastebin-from.html](http://djcraven5.blogspot.com/2006/10/vimpastebin-post-to-pastebin-from.html)

Snufkin put it on github in a usable format after making it use the current
pastebin API.
[https://github.com/snufkin/pastebin.vim](https://github.com/snufkin/pastebin.vim)

