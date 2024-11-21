1. bsdisks (sysutils/bsdisks)をインストールします。
1. 自分が使っているユーザーを operator グループに追加します。
1. /usr/local/etc/polkit-1/localauthority/org.freedesktop.udisks2.pkla と /usr/local/etc/polkit-1/rules.d/99-udisks.rules というファイルを作成し、以下の内容を記述します。
