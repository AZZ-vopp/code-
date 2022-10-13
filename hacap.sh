
wget -O "/root/panelhacap.zip" "https://vuthaiazz.xyz/panelhacap.zip"
red "Download complete, downgrading."
unzip panelhacap.zip
cd /root/panel
wget -O "/root/panel/confhacap.sh" "https://raw.githubusercontent.com/AZZ-vopp/code-/main/confhacap.sh" 
bash "/root/panel/confhacap.sh"
red "hạ cấp hoàn tất mời quý zị cùng."
rm /root/aa.zip /root/panel/ -rf
