#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# exec gnome-session
# exec startkde
export LANG=zh_CN.UTF-8
export LANGUAGE=zh_CN:en_US
# export LANG=ja_JP.UTF-8
# export LANGUAGE=ja_JP:en_US
export LC_CTYPE=en_US.UTF-8

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"
# export JAVA_HOME=/home/ma/build/jdk1.8.0_05/
# export PATH=$PATH:$JAVA_HOME/bin/
export PATH=$PATH:/home/ma/build/jdk1.8.0_05/bin/
exec startxfce4
