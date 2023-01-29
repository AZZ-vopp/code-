rm -rf runblockspeedtest.x
clear
echo "Đang chặn speedtest..."
echo -e ""
sleep 1
iptables -I INPUT -s www.fast.com -j DROP
iptables -I INPUT -s fast.com -j DROP
iptables -I INPUT -s 23.198.103.141 -j DROP
iptables -I INPUT -s 23.41.68.21 -j DROP
iptables -I INPUT -s 104.74.109.137 -j DROP
iptables -I INPUT -s 23.199.140.37 -j DROP
iptables -I INPUT -s speedtest.net -j DROP
iptables -I INPUT -s www.speedtest.net -j DROP
iptables -I INPUT -s 151.101.66.219 -j DROP
iptables -I INPUT -s 151.101.194.219 -j DROP
iptables -I INPUT -s 151.101.2.219 -j DROP
iptables -I INPUT -s 151.101.130.219 -j DROP
iptables -I INPUT -s speedtest.vn -j DROP
iptables -I INPUT -s 203.119.73.32 -j DROP
iptables -I INPUT -p tcp -m tcp --dport 22 -j ACCEPT
iptables -I INPUT -p tcp -m tcp --dport 80 -j ACCEPT
iptables -I INPUT -p tcp -m tcp --dport 443 -j ACCEPT
iptables -I INPUT -s 23.246.0.0/18 -j DROP
iptables -I INPUT -s 198.38.96.0/19 -j DROP
iptables -I INPUT -s 203.119.73.32 -j DROP
iptables -I INPUT -s 27.68.239.33 -j DROP
iptables -I INPUT -s 27.68.226.129 -j DROP
iptables -I INPUT -s 27.67.51.167 -j DROP 
iptables -I INPUT -s 113.164.24.102 -j DROP
iptables -I INPUT -s 118.70.115.12 -j DROP
iptables -I INPUT -s 123.31.28.223 -j DROP
iptables -I INPUT -s 103.229.41.248 -j DROP
iptables -I INPUT -s 103.152.164.252 -j DROP
iptables -I INPUT -s 103.121.88.251 -j DROP
iptables -I INPUT -s 103.233.49.18 -j DROP
iptables -I INPUT -s 203.170.26.188 -j DROP
iptables -I INPUT -s 59.153.221.2 -j DROP
iptables -I INPUT -s 123.30.170.22 -j DROP
iptables -I INPUT -s 27.67.51.171 -j DROP
iptables -I INPUT -s 171.244.173.3 -j DROP
iptables -I INPUT -s 203.162.252.26 -j DROP
iptables -I INPUT -s 27.67.51.172 -j DROP
iptables -I INPUT -s 27.67.51.170 -j DROP
iptables -I INPUT -s 113.164.16.66 -j DROP
iptables -I INPUT -s 27.68.201.1 -j DROP
iptables -I INPUT -s 103.68.251.5 -j DROP
iptables -I INPUT -s 118.70.71.231 -j DROP
iptables -I INPUT -s 45.126.96.244 -j DROP
iptables -I INPUT -s 171.244.232.194 -j DROP
iptables -I INPUT -s 113.164.8.250 -j DROP
iptables -I INPUT -s 119.82.130.238 -j DROP
iptables -I INPUT -s 27.68.239.33 -j DROP
iptables -I INPUT -s 118.70.71.216 -j DROP
iptables -I INPUT -s 221.132.29.208 -j DROP
iptables -I INPUT -s 112.197.2.182 -j DROP
iptables -I INPUT -s 103.205.97.222 -j DROP
iptables -I INPUT -s 137.59.44.89 -j DROP
iptables -I INPUT -s 101.53.2.84 -j DROP
iptables -I INPUT -s 103.216.72.239 -j DROP
iptables -I INPUT -s 202.43.108.4 -j DROP
iptables -I INPUT -s 113.164.9.121 -j DROP
iptables -I INPUT -s 180.93.87.24 -j DROP
iptables -I INPUT -s 103.152.164.123 -j DROP
iptables -I INPUT -s 103.149.255.26 -j DROP
iptables -I INPUT -s 113.61.111.212 -j DROP
iptables -I INPUT -s 115.84.182.155 -j DROP
iptables -I INPUT -s 115.84.178.186 -j DROP
iptables -I INPUT -s 171.229.196.6 -j DROP
iptables -I INPUT -s 104.16.210.12 -j DROP
iptables -I INPUT -s 104.16.209.12 -j DROP
iptables-save  > /etc/iptables/rules.v4
systemctl start netfilter-persistent
systemctl restart netfilter-persistent
systemctl enable netfilter-persistent
systemctl status netfilter-persistent
clear
echo "Chặn speedtest thành công!"
echo -e ""
sleep 1
clear
