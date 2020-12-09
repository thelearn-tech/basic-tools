# basic-tools

cd
echo
printf '\033[36m';echo script by THE_EAGLE
echo
echo AKA Pritam Behera
echo
echo https://github.com/thelearn-tech/basic-tools
sleep 4
echo
echo following script will install nano,python,figlet,
echo cowsay,apache2,w3m,wget,nmap, openssh , speedtest-cli 
echo IP-Tracer,ruby ,hydra , python 2,npm
sleep 2
echo
pkg install nano python figlet cowsay apache2 w3m 
pkg install wget nmap openssh grep curl ruby hydra python2 nodejs
apt-get install dnsutils -y
echo
printf '\033[36m';echo nano python figlet cowsay apache2 w3m wget nmap 
printf '\033[36m';echo openssh grep curl ruby hydra python2 installation complete
echo
echo ngrok will install now
sleep 2
echo
cd
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip
unzip ngrok-stable-linux-arm.zip
rm -rf ngrok-stable-linux-arm.zip
sleep 2
echo
printf '\033[36m';echo IP-Tracer will install now
echo
echo https://github.com/rajkumardusad/IP-Tracer.git
cd
git clone https://github.com/rajkumardusad/IP-Tracer.git
cd IP-Tracer
chmod +x install
./install
echo
echo IP-Tracer installed
echo
sleep 4
cd
echo installing speedtest-cli
curl -Lo speedtest-cli https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py
chmod +x speedtest-cli
cp speedtest-cli speedtest
mv speedtest /data/data/com.termux/files/usr/bin
echo 
echo type speedtest to start speed test
cd
rm -rf basic-tools
sleep 3

