#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
LANG=en_US.UTF-8

# aapanel hạ cấp

panel_path='/www/server/panel'

if [ ! -d $panel_path ];then
echo "Bảng aapanel hiện chưa được cài đặt!"
exit 0;
fi

base_dir=$(cd "$(dirname "$0")";pwd)
if [ $base_dir = $panel_path ];then
echo "Không thể thực hiện lệnh hạ cấp trong thư mục gốc của bảng điều khiển!"
exit 0;
fi

if [ ! -d $base_dir/class ];then
echo "Không tìm thấy tệp hạ cấp nào!"
exit 0;
fi

rm -f $panel_path/*.pyc $panel_path/class/*.pyc
\cp -r -f $base_dir/. $panel_path/
/etc/init.d/bt restart
echo "===================================="
echo "Đã hoàn tất hạ cấp!"
