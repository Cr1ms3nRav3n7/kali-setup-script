#/bin/bash

cd /opt
#Get kerbrute binary
mkdir /opt/kerbrute
cd /opt/kerbrute
wget https://github.com/ropnop/kerbrute/releases/download/v1.0.3/kerbrute_linux_amd64
chmod +x kerbrute_linux_amd64

#Install impacket tools
cd /opt
git clone https://github.com/Fortra/impacket.git
cd /opt/impacket
python3 setup.py install
pip3 install -r requirements.txt --break-system-packages

#Install more tools

gem install evil-winrm
apt install pipx -y
pipx install donpapi
pipx ensurepath
apt install better cap -y

cd /opt
git clone https://github.com/dirkjanm/PKINITtools.git
git clone https://github.com/dirkjanm/ldapdomaindump.git
git clone https://github.com/dirkjanm/PrivExchange.git
git clone https://github.com/NotMedic/NetNTLMtoSilverTicket.git
git clone https://github.com/topotam/PetitPotam.git
git clone https://github.com/Hackndo/lsassy.git
git clone https://github.com/zyn3rgy/LdapRelayScan.git
git clone https://github.com/fox-it/BloodHound.py.git
git clone https://github.com/epi052/feroxbuster.git
git clone https://github.com/lgandx/Responder.git
git clone https://github.com/p0dalirius/Coercer.git
git clone https://github.com/lgandx/PCredz.git
git clone https://github.com/cython/cython.git
git clone https://github.com/caizhengxin/python-libpcap.git
git clone https://github.com/trustedsec/SeeYouCM-Thief
apt install libpcap-dev -y && pip3 install Cython --break-system-packages && pip3 install python-libpcap --break-system-packages
apt install python3.9 -y
apt install python3.9-dev -y
apt install mitm6

#Get Valk binary
cd /opt
mkdir Valkyrie
cd Valkyrie
wget https://github.com/Dirkenhymer/Valkyrie-2/releases/download/v0.1.3-beta/valk2

cd /opt/cython
python3.9 setup.py build && python3.9 setup.py install

cd /opt/python-libpcap
python3.9 setup.py build && python3.9 setup.py install

cd /opt/lsassy
python3 setup.py install

apt install certipy-ad

cd /opt/BloodHound.py
python3 setup.py install

cd /opt/ldapdomaindump
chmod +x ldapdomaindump.py

#Install gowitness
cd /opt
apt install golang -y
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
apt install ./google-chrome-stable_current_amd64.deb -y
rm google-chrome-stable_current_amd64.deb
wget https://github.com/sensepost/gowitness/archive/refs/tags/2.5.0.tar.gz
tar -xvf 2.5.0.tar.gz
rm 2.5.0.tar.gz
cd gowitness-2.5.0
go build

apt install neovim -y

mkdir /opt/ADCS_Sweeper

cd /opt/ADCS_Sweeper

wget https://github.com/Cr1ms3nRav3n/ADCS-Sweeper/releases/tag/published/adcs

echo "Check your tools WingDing!"
