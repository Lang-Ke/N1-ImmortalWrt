#!/bin/bash

# 添加包
# git clone --depth=1 https://github.com/ophub/luci-app-amlogic package/luci-app-amlogic

# HomeBox
mkdir -p files/usr/bin
mkdir -p files/etc/init.d

wget -O files/usr/bin/homebox \
https://github.com/XGHeaven/homebox/releases/latest/download/homebox-linux-arm64

chmod +x files/usr/bin/homebox

cat > files/etc/init.d/homebox <<'EOF'
#!/bin/sh /etc/rc.common

START=99
USE_PROCD=1

start_service() {
    procd_open_instance
    procd_set_param command /usr/bin/homebox
    procd_set_param respawn
    procd_close_instance
}
EOF

chmod +x files/etc/init.d/homebox
