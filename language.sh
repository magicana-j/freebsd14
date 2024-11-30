#!/bin/sh

sleep 2
echo Install Fonts and IME.
sleep 2
sudo pkg install -y xorg-fonts source-code-pro-ttf noto-jp noto-emoji noto-extra fcitx5 fcitx5-configtool ja-fcitx5-anthy
fc-cache -fv

cat << EOF >> ~/.xprofile
export XMODIFIERS='@im=fcitx'
export GTK_IM_MODULE=fcitx/xim
export QT_IM_MODULE=fcitx
EOF

echo "Execute--  mkdir -p ~/.config/autostart && cp /usr/share/applications/org.fcitx.Fcitx5.desktop ~/.config/autostart/
