#!/bin/sh

sleep 2
echo Install Fonts and IME.
sleep 2
sudo pkg install -y xorg-fonts source-code-pro-ttf noto-emoji noto-extra
sudo pkg install -y noto-jp
sudo pkg install -y fcitx5 fcitx5-configtool fcitx5-gtk2 fcitx5-gtk3 fcitx5-gtk4 fcitx5-qt5 fcitx5-qt6 ja-fcitx5-anthy
fc-cache -fv

cat << EOF >> ~/.profile
export LC_COLLATE="ja_JP.UTF-8"
export LC_CTYPE="ja_JP.UTF-8"
export LC_MONETARY="ja_JP.UTF-8"
export LC_NUMERIC="ja_JP.UTF-8"
export LC_TIME="ja_JP.UTF-8"

cat << EOF >> ~/.xinitrc
export XMODIFIERS='@im=fcitx'
export GTK_IM_MODULE=fcitx/xim
export QT_IM_MODULE=fcitx
fcitx5 -d &
EOF

#echo "Execute--  mkdir -p ~/.config/autostart && cp /usr/share/applications/org.fcitx.Fcitx5.desktop ~/.config/autostart/"
