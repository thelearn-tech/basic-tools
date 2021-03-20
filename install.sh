#!/bin/bash
# all functions
install_packages() {
  clear
  echo "16 packages will install"
 echo ""
  echo "all packages will install one by one"
  sleep 2
  pkg install nano -y 
  pkg install python -y 
  pkg install figlet -y 
  pkg install cowsay -y
  pkg install apache2 -y
  pkg install w3m -y
  pkg install wget -y
  pkg install nmap -y
  pkg install openssh -y
  pkg install grep -y
  pkg install curl -y
  pkg install ruby -y 
  pkg install hydra -y
  pkg install python2 -y
  pkg install nodejs -y
  apt-get install dnsutils -y
sleep 3
  clear
  echo "All 16 packages are installed"
  sleep 1
}

install_ngrok() {
   echo "Installing ngrok"
   sleep 2
   clear
  cd
  wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip
  unzip ngrok-stable-linux-arm.zip
  rm -rf ngrok-stable-linux-arm.zip
  chmod +x ngrok
  cp ngrok /data/data/com.termux/files/usr/bin
  echo ""
  echo "type ngrok to begin"
  sleep 3
}

install_ip_tracer() {
  echo "Installing IP-Tracer"
  echo ""
  echo "https://github.com/rajkumardusad/IP-Tracer.git"
  sleep 2
  cd
  git clone https://github.com/rajkumardusad/IP-Tracer.git
  cd IP-Tracer
  chmod +x install
  ./install
  echo "IP-Tracer installed"
  sleep 2
}

install_speedtestcli() {
 echo "Installing Speedtest-CLI"
 sleep 2
 curl -Lo speedtest-cli https://raw.githubusercontent.com/sivel/speedtest-cli/m$
 chmod +x speedtest-cli
 cp speedtest-cli speedtest
 mv speedtest /data/data/com.termux/files/usr/bin
 echo ""
  echo "Speedtest-CLI installed"
  sleep 2
}

remove_basictools() {
     echo "Removing basic-tools"
     sleep 2
     cd
     rm -rf basic-tools
     echo "basic tools removed"
     sleep 2
}

# banner
clear
printf '\033[32m';echo "   ____________         "
printf '\033[32m';echo "  < basic tool  >       " 
printf '\033[32m';echo "   ------------         "
printf '\033[32m';echo "        \   ,__,         \033[33m  v1.1"
printf '\033[32m';echo "         \  (oo)____    "
printf '\033[32m';echo "            (__)    )\    \033[36m by thelearn-tech      "
printf '\033[32m';echo "               ||--|| *  \033[31m  ©2019 - 2021 "
sleep 4
echo ""
echo ""
printf '\033[32m';echo " Following packages will install"
echo " nano , python , figlet , cowsay , grep ,dns tool,"
echo " apache2 , w3m , wget , nmap , openssh , ngrok ,node-js,"
echo " speedtest-cli , IP-Tracer , hydra ,ruby ,npm , python2."
echo ""
echo " This will require 250gb-350mb archive and then around 1.5gb-2.6gb"
sleep 3
echo ""
echo " do you want to continue"
read -p " yes/no: " input1
if  [ $input1 = "yes" ]
  then
    echo "Installing"
    sleep 1
    clear
install_packages
clear
install_ngrok
clear
install_ip_tracer
clear
install_speedtestcli
clear
remove_basictools
clear
else
    echo "user interupt"
exit 1
fi

