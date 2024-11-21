# freebsd


```
pkg

pkg install -y nano vim sudo git curl


```

```
# visudo
```

## USBメモリ

https://kdeguchi.lsv.jp/2024/07/18/post-1284/

```
# fusefs-ntfs
```

```
pkg install -y xorg
pkg install -y xfce xfce4-goodies lightdm lightdm-gtk-greeter
pkg install -y xdg-user-dirs

nano /etc/fstab
```

proc                    /proc   procfs  rw              0       0


https://docs.freebsd.org/ja/books/handbook/x11/

```
pkg install -y drm-kmod
libva-intel-driver mesa-libs mesa-dri
# sysrc kld_list+=i915kms
```

https://wiki.freebsd.org/Graphics
```
pkg install ja-font-std ja-font-vlgothic ja-font-takao
pkg install noto-basic noto-extra noto-emoji noto-jp
```


pkg install -u firefox

```
/etc/rc.conf
dbus_enable="YES"
lightdm_enable="YES"
```

```
pkg install ja-fcitx5-anthy fcitx5-configtool
```

```
~/.xprofile
export LANG=ja_JP.UTF-8
export LC_ALL=ja_JP.UTF-8
export LC_CTYPE=ja_JP.UTF-8
 
export XMODIFIERS='@im=fcitx'
export GTK_IM_MODULE=fcitx/xim
export QT_IM_MODULE=fcitx
```

```
$ mkdir .config/autostart
$ cp /usr/local/share/applications/org.fcitx.Fcitx5.desktop ~/.config/autostart/
```

xarchiver
thunar-archive-plugin

## Software
gimp shotwell
libreoffice ja-libreoffice
shotcut vlc

