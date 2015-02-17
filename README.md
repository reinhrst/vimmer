This is my vim config

The initial desire to do this came from being frustrated with the vim packages I had collected so far, which allowed me to do a bit of everything (among which some Python development), and trying to move to a proper python IDE in VIM.

I used http://www.sontek.net/blog/2011/05/07/turning_vim_into_a_modern_python_ide.html and http://blog.dispatched.ch/2009/05/24/vim-as-python-ide/ as inspiration (even though these are both quite old) to build the perfect IDE. In addition I will mix in some other VIM packages that I discovered before (and after?)

At the time of writing (but perhaps this has changed by the time anyone ever reads this), I use a vimrc that switches off the arrow keys in order to force myself to move by VIM keys
.

The deployment target is macvim 7.4-73 on OSX Mavericks built with python3 support. The intention is to be programming almost exclusively in python3 (although it would be nice if python2.7 was supported as well).

# INSTALL
This repo should probably be checked out into the ~/.vim directory, after which ~/.vimrc should be symlinked to the .vimrc in this directory.

In addition, run `sh install.sh`.
