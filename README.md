# dotfiles
My dotfiles: under construction. 

![Coming soon!](http://bestanimations.com/Site/Construction/under-construction-gif-6.gif)


## tmux
I have two files related to tmux. `.tmux.conf` contains my settings for tmux and `grammofy.sh` is a script I made for an easy way to start up my daily workspace for working on Grammofy. Every morning I run `sh grammofy.sh` and then a tmux session named grammofy starts with two panes: one starting the server and the other running `git standup` which I use to recap what I did yesterday. There's some commented code in `grammofy.sh` which can be used to start multiple windows on startup if that
is needed. 

## vim

For the initial setup I use (https://github.com/amix/vimrc)[https://github.com/amix/vimrc]. The file `my_configs.vim` contains my vim settings besides the ones in amix/vimrc.
