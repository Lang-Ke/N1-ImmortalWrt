#!/bin/bash

# 添加第三方 feeds
 echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >> feeds.conf.default
 echo 'src-git small https://github.com/kenzok8/small' >> feeds.conf.default

 ./scripts/feeds update -a
 ./scripts/feeds install -a
