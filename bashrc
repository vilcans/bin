#!/bin/bash
PS1='\[\e]2;\W\007\e]1;\007\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '
