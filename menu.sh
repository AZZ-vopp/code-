
red(){
    echo -e "\033[31m\033[01m$1\033[0m"
}
green(){
    echo -e "\033[32m\033[01m$1\033[0m"
}
yellow(){
    echo -e "\033[33m\033[01m$1\033[0m"
}
blue(){
    echo -e "\033[34m\033[01m$1\033[0m"
}
purple(){
    echo -e "\033[35m\033[01m$1\033[0m"
}

# cài đặt aapanel quốc tế
function aapanelgoc(){
wget -O "/root/aapanel-install.sh" "http://www.aapanel.com/script/install_6.0_en.sh"
red "Installing the original aapanel panel from the official website."
bash "/root/install_6.0_en.sh"
}

# cài đặt bản aapanel bản tàu khựa
function aapanelTQ(){  
wget -O "/root/bt-install.sh" "http://download.bt.cn/install/install_6.0.sh"
red "The original BTPanel is being installed from the official website.."
bash "/root/bt-install.sh"
}

# bẻ khoá aapanel bản hiện tại
function panelcrack(){  
bash <(curl -Ls https://raw.githubusercontent.com/AZZ-vopp/Z_OV/main/script/Z_OVpanel.sh)
red "đã crack xong vui lòng f5 hoặc login lại aapanel"
}
# mở chặn speedtest
function unspeedtest(){
iptables -F && clear && echo "   đã mở khoá cho test speed khi dùng vpn !"

}



# gỡ cài đặt aapanel
function uninstall(){
wget -O "/root/bt-uninstall.sh" "http://download.bt.cn/install/bt-uninstall.sh"
bash "/root/bt-uninstall.sh"
red "Panel uninstalled successfully."
}

# anti l4
function anti-l4(){
bash <(curl -Ls https://raw.githubusercontent.com/AZZ-vopp/Z_OV/main/lo4.sh)
red "anti l4 hoàn tất."
}

function blockspeed(){
bash <(curl -Ls https://raw.githubusercontent.com/AZZ-vopp/code-/main/blockspeedtest.sh)
}

function hacap(){
wget -O "/root/panelhacap.zip" "https://github.com/AZZ-vopp/code-/raw/010ab53b74a38233c7ffb23b2e20c05d48ef7614/panelhacap.zip"
red "tải xuống bản hạ cấp hoàn tất vui lòng chờ 1 tý để đè vào bản đang chạy ....."
unzip panelhacap.zip
cd /root/panel
wget -O "/root/panel/confhacap.sh" "https://raw.githubusercontent.com/AZZ-vopp/code-/main/confhacap.sh" 
bash "/root/panel/confhacap.sh"
red "hạ cấp hoàn tất mời quý zị cùng."
rm /root/aa.zip /root/panel/ -rf
}


function start_menu(){
    clear
    purple " chào mừng bạn đến với tool aapanel."
    purple " zalo     : 0968343658"
    purple " facebook : https://www.facebook.com/i.am.thai.ok"
    yellow " ————————————————————————————————————————————————"
    green " 1. cài đặt aapanel bản gốc"
    green " 2. block speedtest trên vps chạy VPN"
    yellow " ————————————————————————————————————————————————"
    green " 3. hạ cấp xuống bản ổn định 6.8.23"
    green " 4. mở khoá chặn speedtest ch vps vpn"
    green " 5. Crack bản aapanel hiện tại ( yêu tiên cài mới) "
    green " 6. anti lờ bốn"
    green " 7. cài đặt aapanel bản tàu"
    yellow " ————————————————————————————————————————————————"
    green " 8. gỡ cài đặt bản aapanel hiện tại"
    green " 9. chờ cập nhật tool mới"
    green " 0. thoát giao diện tool"

    echo
    read -p "nhập số và ấn enter nha quý zị:" menuNumberInput
    case "$menuNumberInput" in
        1 )
           aapanelgoc
	    ;;
        2 )
           blockspeed
        ;;
        3 )
           hacap
        ;;
        4 )
           unspeedtest
        ;;
        5 )
           panelcrack
        ;;
        6 )
           anti-l4
        ;;
        7 )
           aapanelTQ
        ;;
        8 )
           uninstall
        ;;
        9 )
           
        ;;
        0 )
            exit 1
        ;;
        * )
            clear
            red "nhập đúng số đi sai rùi :)"
            start_menu
        ;;
    esac
}
start_menu "first"
