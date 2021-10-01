#!/bin/bash

apt update && apt upgrade -y && apt install tmux git mosh aptitude ack docker-compose sudo openvpn htop atop virtualenv -y
cd /opt
git clone https://github.com/Wh1t3Rh1n0/deb2kali
bash deb2kali/deb2kali.sh

apt install docker.io -y
clear
cd /tmp
echo "Installing Golang"
wget https://dl.google.com/go/go1.14.4.linux-amd64.tar.gz
tar -xvf go1.14.4.linux-amd64.tar.gz
sudo mv go /usr/local
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
echo 'export GOROOT=/usr/local/go' >> ~/.bash_profile
echo 'export GOPATH=$HOME/go'   >> ~/.bash_profile
echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bash_profile     
source ~/.bash_profile
sleep 1

clear
echo "Installing BBHT"
cd /opt && git clone https://github.com/nahamsec/bbht.git && cd bbht && chmod +x install.sh && ./install.sh

echo "Downloading payloads, this might take some time..."

### fuzzdb
wget https://github.com/fuzzdb-project/fuzzdb/archive/master.zip
unzip master.zip
rm -rf master.zip
mv fuzzdb-master fuzzdb

### SecLists
wget https://github.com/danielmiessler/SecLists/archive/master.zip
unzip master.zip
rm -rf master.zip
mv SecLists-master danielmiessler

### xsuperbug
wget https://github.com/xsuperbug/payloads/archive/master.zip
unzip master.zip
rm -rf master.zip
mv payloads-master xsuperbug

### NickSanzotta
wget https://github.com/NickSanzotta/BurpIntruder/archive/master.zip
unzip master.zip
rm -rf master.zip
mv BurpIntruder-master NickSanzotta

### 7ioSecurity
wget https://github.com/7ioSecurity/XSS-Payloads/archive/master.zip
unzip master.zip
rm -rf master.zip
mv XSS-Payloads-master 7ioSecurity

### shadsidd
wget https://github.com/shadsidd/Automated-XSS-Finder/archive/master.zip
unzip master.zip
rm -rf master.zip
mv Automated-XSS-Finder-master shadsidd

### tennc
wget https://gist.github.com/tennc/4026cfd0925aaad0a655/archive/c5741a19a0007bac49caf6cfccc93b296ec38cf0.zip
unzip c5741a19a0007bac49caf6cfccc93b296ec38cf0.zip
rm -rf c5741a19a0007bac49caf6cfccc93b296ec38cf0.zip
mv 4026cfd0925aaad0a655-c5741a19a0007bac49caf6cfccc93b296ec38cf0 tennc

### sqlifuzzer
wget https://github.com/ContactLeft/sqlifuzzer/archive/master.zip
unzip master.zip
rm -rf master.zip
mv sqlifuzzer-master sqlifuzzer

### wfuzz
wget https://github.com/xmendez/wfuzz/archive/master.zip
unzip master.zip
rm -rf master.zip
mv wfuzz-master wfuzz

### big list of naughty strings
wget https://github.com/minimaxir/big-list-of-naughty-strings/archive/master.zip
unzip master.zip
rm -rf master.zip
mv big-list-of-naughty-strings-master big-list-of-naughty-strings

### xsscx
wget https://github.com/xsscx/Commodity-Injection-Signatures/archive/master.zip
unzip master.zip
rm -rf master.zip
mv Commodity-Injection-Signatures-master Commodity-Injection-Signatures

### TheRook
wget https://github.com/TheRook/subbrute/archive/master.zip
unzip master.zip
rm -rf master.zip
mv subbrute-master subbrute

### danielmiessler
wget https://github.com/danielmiessler/RobotsDisallowed/archive/master.zip
unzip master.zip
rm -rf master.zip
mv RobotsDisallowed-master RobotsDisallowed

### FireFart
wget https://github.com/FireFart/HashCollision-DOS-POC/archive/master.zip
unzip master.zip
rm -rf master.zip
mv HashCollision-DOS-POC-master HashCollision-DOS-POC

### HybrisDisaster
wget https://github.com/FireFart/aspHashDoS/archive/master.zip
unzip master.zip
rm -rf master.zip
mv aspHashDoS-master aspHashDoS

### swisskyrepo
wget https://github.com/swisskyrepo/PayloadsAllTheThings/archive/master.zip
unzip master.zip
rm -rf master.zip
mv PayloadsAllTheThings-master PayloadsAllTheThings

### 1N3
wget https://github.com/1N3/IntruderPayloads/archive/master.zip
unzip master.zip
rm -rf master.zip
mv IntruderPayloads-master IntruderPayloads

### cujanovic
wget https://github.com/cujanovic/Open-Redirect-Payloads/archive/master.zip
unzip master.zip
rm -rf master.zip
mv Open-Redirect-Payloads-master Open-Redirect-Payloads

wget https://github.com/cujanovic/Content-Bruteforcing-Wordlist/archive/master.zip
unzip master.zip
rm -rf master.zip
mv Content-Bruteforcing-Wordlist-master Content-Bruteforcing-Wordlist

wget https://github.com/cujanovic/subdomain-bruteforce-list/archive/master.zip
unzip master.zip
rm -rf master.zip
mv subdomain-bruteforce-list-master subdomain-bruteforce-list

wget https://github.com/cujanovic/CRLF-Injection-Payloads/archive/master.zip
unzip master.zip
rm -rf master.zip
mv CRLF-Injection-Payloads-master CRLF-Injection-Payloads

wget https://github.com/cujanovic/Virtual-host-wordlist/archive/master.zip
unzip master.zip
rm -rf master.zip
mv Virtual-host-wordlist-master Virtual-host-wordlist

wget https://github.com/cujanovic/dirsearch-wordlist/archive/master.zip
unzip master.zip
rm -rf master.zip
mv dirsearch-wordlist-master dirsearch-wordlist

### lavalamp-
wget https://github.com/lavalamp-/password-lists/archive/master.zip
unzip master.zip
rm -rf master.zip
mv password-lists-master password-lists

### arnaudsoullie
wget https://github.com/arnaudsoullie/ics-default-passwords/archive/master.zip
unzip master.zip
rm -rf master.zip
mv ics-default-passwords-master ics-default-passwords

### scadastrangelove
wget https://github.com/scadastrangelove/SCADAPASS/archive/master.zip
unzip master.zip
rm -rf master.zip
mv SCADAPASS-master SCADAPASS

### jeanphorn
wget https://github.com/jeanphorn/wordlist/archive/master.zip
unzip master.zip
rm -rf master.zip
mv wordlist-master wordlist

### j3ers3
wget https://github.com/j3ers3/PassList/archive/master.zip
unzip master.zip
rm -rf master.zip
mv PassList-master PassList

### nyxxxie
wget https://github.com/nyxxxie/awesome-default-passwords/archive/master.zip
unzip master.zip
rm -rf master.zip
mv awesome-default-passwords-master awesome-default-passwords

### foospidy
wget https://github.com/foospidy/web-cve-tests/archive/master.zip
unzip master.zip
rm -rf master.zip
mv web-cve-tests-master web-cve-tests

### terjanq
wget https://github.com/terjanq/Tiny-XSS-Payloads/archive/master.zip
unzip master.zip
rm -rf master.zip
mv Tiny-XSS-Payloads-master Tiny-XSS-Payloads

clear 

echo "Installing Docker Empire BC Security"

mkdir -p ~/tools/empire && docker pull bcsecurity/empire
docker stop empire

echo "Installing DoxyCannon"
cd ~/tools && git clone https://github.com/audibleblink/doxycannon && cd doxycannon
virtualenv pyenv
source pyenv/bin/activate
pip3 install -r requirements.txt
deactivate

pip install shodan
pip install censys

#echo "Installing Docker Covenant"
#cd ~/
#git clone --recurse-submodules https://github.com/cobbr/Covenant
#cd Covenant/Covenant
#docker build -t covenant .
#sleep 5
#docker stop covenant


gem update
gem install whois


cd ~/tools && git clone https://github.com/projectdiscovery/nuclei-templates
cd ~/tools && git clone https://github.com/Greenwolf/Spray spray
cd ~/tools && git clone https://github.com/christophetd/censys-subdomain-finder
cd ~/tools && git clone --depth 1 https://github.com/drwetter/testssl.sh.git && ln -s ~/tools/testssl.sh/testssl.sh /usr/bin/testssl
cd ~/tools && git clone https://github.com/aboul3la/Sublist3r.git && cd Sublist3r && pip install -r requirements.txt && ln -s ./Sublist3r.py /usr/bin/sublister


#Installing slacktee
cd ~/tools && git clone https://github.com/course-hero/slacktee.git && bash ./slacktee/install.sh && ln -s ~/tools/slacktee/slacktee.sh /usr/bin/slacktee

#Setting somethings up...


wget https://github.com/projectdiscovery/subfinder/releases/download/v2.4.9/subfinder_2.4.9_linux_amd64.zip
unzip subfinder*.zip && rm -rf subfinder*.zip && mv ./subfinder /root/go/bin/

rm -rf *.tar.gz && rm -rf *.zip

cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .


#Installing go based tools :D
echo "export GO111MODULE=on" >> ~/root/.bashrc
export GO111MODULE=on
go get -v github.com/OWASP/Amass/v3/...
go get github.com/Q2h1Cg/dnsbrute
go get -u github.com/shenwei356/rush/
go get -v github.com/projectdiscovery/dnsx/cmd/dnsx
GO111MODULE=on go get -v github.com/projectdiscovery/httpx/cmd/httpx
GO111MODULE=on go get -v github.com/projectdiscovery/naabu/v2/cmd/naabu
GO111MODULE=on go get -v github.com/projectdiscovery/proxify/cmd/proxify
GO111MODULE=on go get -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei
GO111MODULE=on go get -u github.com/jaeles-project/gospider
GO111MODULE=on go get -v github.com/projectdiscovery/notify/cmd/notify
GO111MODULE=on go get github.com/j3ssie/metabigor
GO111MODULE=on go get github.com/jaeles-project/jaeles
GO111MODULE=on go get -v github.com/projectdiscovery/interactsh/cmd/interactsh-client
GO111MODULE=on go get -u -v github.com/lc/gau
GO111MODULE=on go get -v github.com/projectdiscovery/mapcidr/cmd/mapcidr
go get -u github.com/tomnomnom/httprobe
go install github.com/hakluke/hakrawler@latest
go get github.com/tomnomnom/waybackurls
go get -u github.com/tomnomnom/anew
go get -u github.com/tomnomnom/assetfinder
go get -u github.com/ffuf/ffuf
go get github.com/famasoon/crtsh


#Setting gowitness
cd /root/go/bin && wget https://github.com/sensepost/gowitness/releases/download/2.3.6/gowitness-2.3.6-linux-amd64 && mv gowitness* gowitness && chmod +x gowitness && cd ~/tools
cd /tmp && wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && dpkg -i google-chrome-stable_current_amd64.deb && cd ~/tools


#Installing oh-my-bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"


