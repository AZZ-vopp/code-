# đừng copy
{

    read -p "Nhập Link Web :" số
    echo -e "Link Web là : ${số}"

    read -p "Nhập Link Web :" plugin
    echo -e "Link Web là : ${plugin}"

    read -p "Nhập Link Web :" repair
    echo -e "Link Web là : ${repair}"


    
}

red "xin chờ 3s sẽ cờ rách xong"
sed -i 's|"endtime": -1|"endtime": "$số"|g' /www/server/panel/data/"$plugin".json
sed -i 's|"pro": -1|"pro": 0|g' /www/server/panel/data/"$plugin".json
chattr +i /www/server/panel/data/"$plugin".json
chattr -i /www/server/panel/data/"$repair".json
rm /www/server/panel/data/"$repair".json
cd /www/server/panel/data
wget https://raw.githubusercontent.com/AZZ-vopp/Z_OV/main/resource/"$repair".json
chattr +i /www/server/panel/data/"$repair".json
red "cracked đã hoàn  tất"
