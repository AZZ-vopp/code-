red "xin chờ 3s sẽ cờ rách xong"
sed -i 's|"endtime": -1|"endtime": 999999999999|g' /www/server/panel/data/plugin.json
sed -i 's|"pro": -1|"pro": 0|g' /www/server/panel/data/plugin.json
chattr +i /www/server/panel/data/plugin.json
chattr -i /www/server/panel/data/repair.json
rm /www/server/panel/data/repair.json
cd /www/server/panel/data
wget https://raw.githubusercontent.com/AZZ-vopp/code-/main/resource/repair.json
chattr +i /www/server/panel/data/repair.json
red "cracked đã hoàn  tất"


