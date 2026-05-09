#!/bin/bash

#添加feeds源
echo 'src-git small8 https://github.com/kenzok8/small-package' >> feeds.conf.default


./scripts/feeds update -a
./scripts/feeds install -a
