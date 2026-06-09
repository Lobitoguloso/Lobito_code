# Lobito_code by Arthur 
"olho e não encontro vejo se não fui um tonto de acreditar no conto do vigário que escutei...". 

Lobito_code é uma ferramenta de organização de scripts básicos no termux, ótimo para iniciantes 
# para ultilizar a ferramenta,instale o git,para evitar erros,atualize as dependências do termux com o seguinte comando:

pkg update && pkg upgrade -y

# após isso,digite o seguinte comando:

pkg install git openssh -y

# para confirmar a instalação (se ocorreu tudo certo)digite o seguinte comando:

git --version

# após a instalação do git,digite o seguinte comando:

git clone https://github.com/Lobitoguloso/Lobito_code/tree/main

e então você já está quase terminando a configuração 

# configuração do Lobito_code

após já estar tudo instalado, você vai digitar o seguinte comando:

nano ~/.bashrc

# após isso, você ira apagar tudo que estiver no arquivo e colar o seguinte código:

  GNU nano 9.0   /data/data/com.termux/files/home/.bashrc
# ============================================
# LOBITO CODE - Auto-init
# By: Arthur
# ============================================

# Limpa a tela inicial do Termux
clear

# Executa o painel automaticamente
bash ~/lobito_code.sh

# Se sair do painel, volta pro terminal normal
echo ""
echo -e "\033[38;5;214m[*] Painel encerrado. Terminal normal disponiv>
echo -e "\033[0;32m[*] Digite 'painel' para reabrir o Lobito Code.\03>
alias painel='bash ~/lobito_code.sh'

alias painel='bash ~/.lobito_code.sh'
alias painel='bash ~/lobito_code.sh'

# ferramentas para usar com Lobito_code(instale seguindo as instruções):

ghosttrack:
https://github.com/HunxByts/GhostTrack


MaxPhisher:
https://github.com/KasRoudra2/MaxPhisher


infect (noob hackers):
https://github.com/noob-hackers/infect


Tbomb(desativado,porem a qualquer momento pode voltar):
https://github.com/TheSpeedX/Tbomb

Tool-X:
https://github.com/trmxvibs/Tool-X

