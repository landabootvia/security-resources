#!/bin/bash

# Disclaimer: This is just a dumb script to download the vpngate file in order to use together with Doxycannon


GREEN='\033[0;32m'
YELLOW='\033[1;33m'

#Baixa o arquivo em formato csv contendo as infos das VPN publicas
wget -O aaa http://www.vpngate.net/api/iphone/

#Deleta e cria novo diretorio VPN
rm -rf VPN/
mkdir VPN/


#Define o numero de linhas para o loop for
linhas=`wc -l aaa | awk '{print$1}'`


#Loop linha-a-linha para criar cada arquivo de vpn
for i in $(seq 3 $linhas);do


        #nome=`cat aaa | sed -n "$i"p | awk -F"," '{print$1}'`

	nome=`cat aaa | sed -n "$i"p | awk -F"," '{print$1" "$2" "$6" "$7}' | sed 's, ,_,g'`

        cat aaa | sed -n "$i"p | awk -F"," '{print$15}' | base64 -d > VPN/$nome.ovpn


done;

#Deleta essa merda de arquivo que nao sei pq eh criado, nao me interessa ver agora o porque que foi criado
rm -rf VPN/\*?*

#Define o numero de arquivos .ovpn criados
numlinhas=`ls VPN/*.ovpn | wc -l`



#Exibe o numero de arquivo carregados
echo -e "${YELLOW}[+] Total of ${GREEN}$numlinhas ${YELLOW}VPN files loaded mothafucka james ;)"
