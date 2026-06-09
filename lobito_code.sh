#!/data/data/com.termux/files/usr/bin/bash

# ============================================================
#  LOBITO CODE - PAINEL DE FERRAMENTAS
#  By: Arthur
#  Versao: 4.0
# ============================================================

# ---------- CORES ----------
LARANJA='\033[38;5;214m'
LARANJA_CLARO='\033[38;5;215m'
LARANJA_ESCURO='\033[38;5;208m'
VERDE='\033[0;32m'
VERDE_CLARO='\033[38;5;83m'
VERMELHO='\033[0;31m'
VERMELHO_CLARO='\033[38;5;196m'
CINZA='\033[38;5;245m'
BRANCO='\033[1;37m'
RESET='\033[0m'

# ---------- ANIMACAO DE ENTRADA ----------
animacao_entrada() {
    clear
    
    for i in $(seq 1 20); do
        for j in $(seq 1 7); do
            echo -ne "${LARANJA_ESCURO}$(cat /dev/urandom | tr -dc '01' | head -c 40)${RESET}\n"
        done
        sleep 0.03
    done
    
    sleep 0.2
    clear

    echo ""
    echo -e "${LARANJA}                            _____       _ _ _   _           ${RESET}" ; sleep 0.08
    echo -e "${LARANJA}                           |  _  |     | (_) | (_)          ${RESET}" ; sleep 0.08
    echo -e "${LARANJA}                           | | | | ___ | |_| |_ _  ___     ${RESET}" ; sleep 0.08
    echo -e "${LARANJA}                           | | | |/ _ \| | | __| |/ __|    ${RESET}" ; sleep 0.08
    echo -e "${LARANJA}                           \ \_/ / (_) | | | |_| | (__     ${RESET}" ; sleep 0.08
    echo -e "${LARANJA}                            \___/ \___/|_|_|\__|_|\___|    ${RESET}" ; sleep 0.08
    echo "" ; sleep 0.08
    echo -e "${VERDE}                         ___   ___  ___   ___ _____ ${RESET}" ; sleep 0.08
    echo -e "${VERDE}                        / _ \ / _ \/ _ \ / _ \_   _|${RESET}" ; sleep 0.08
    echo -e "${VERDE}                       | | | | | | | | | | | || |  ${RESET}" ; sleep 0.08
    echo -e "${VERDE}                       | |_| | |_| | |_| | |_| || |  ${RESET}" ; sleep 0.08
    echo -e "${VERDE}                        \___/ \___/ \___/ \___/ |_|  ${RESET}" ; sleep 0.08
    echo "" ; sleep 0.08
    echo -e "${LARANJA_CLARO}                                By: Arthur${RESET}" ; sleep 0.15
    
    sleep 0.6
    clear
}

# ---------- BANNER PRINCIPAL ----------
banner() {
    clear
    echo -e "${LARANJA}"
    echo "              ██████  ██████  ██████  ██ ████████ ██       ██████  "
    echo "             ██    ██ ██   ██ ██   ██ ██    ██    ██      ██    ██ "
    echo "             ██    ██ ██████  ██   ██ ██    ██    ██      ██    ██ "
    echo "             ██    ██ ██   ██ ██   ██ ██    ██    ██      ██    ██ "
    echo "              ██████  ██████  ██████  ██    ██    ███████  ██████  "
    echo ""
    echo -e "              ██████  ██████  ██████  ██████  ███████ "
    echo -e "             ██      ██    ██ ██    ██ ██   ██ ██      "
    echo -e "             ██      ██    ██ ██    ██ ██   ██ █████   "
    echo -e "             ██      ██    ██ ██    ██ ██   ██ ██      "
    echo -e "              ██████  ██████  ██████  ██████  ███████ "
    echo -e "${RESET}"
    echo -e "${LARANJA_CLARO}                     ═══ LOBITO CODE ═══${RESET}"
    echo -e "${VERDE}                        By: Arthur${RESET}"
    echo ""
}

# ---------- ARTE HACKER (FERRAMENTAS) ----------
arte_ferramentas() {
    echo -e "${VERMELHO}"
    echo "  ███████╗███████╗██████╗ ██████╗  █████╗ ███╗   ███╗███████╗███╗   ██╗████████╗ █████╗ ███████╗"
    echo "  ██╔════╝██╔════╝██╔══██╗██╔══██╗██╔══██╗████╗ ████║██╔════╝████╗  ██║╚══██╔══╝██╔══██╗██╔════╝"
    echo "  █████╗  █████╗  ██████╔╝██████╔╝███████║██╔████╔██║█████╗  ██╔██╗ ██║   ██║   ███████║███████╗"
    echo "  ██╔══╝  ██╔══╝  ██╔══██╗██╔══██╗██╔══██║██║╚██╔╝██║██╔══╝  ██║╚██╗██║   ██║   ██╔══██║╚════██║"
    echo "  ██║     ███████╗██║  ██║██║  ██║██║  ██║██║ ╚═╝ ██║███████╗██║ ╚████║   ██║   ██║  ██║███████║"
    echo "  ╚═╝     ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝╚═╝  ╚═══╝   ╚═╝   ╚═╝  ╚═╝╚══════╝"
    echo -e "${RESET}"
}

# ---------- SAIR ----------
sair() {
    clear
    echo ""
    echo -e "${LARANJA}"
    echo "  ███████╗██╗███╗   ███╗"
    echo "  ██╔════╝██║████╗ ████║"
    echo "  █████╗  ██║██╔████╔██║"
    echo "  ██╔══╝  ██║██║╚██╔╝██║"
    echo "  ██║     ██║██║ ╚═╝ ██║"
    echo "  ╚═╝     ╚═╝╚═╝     ╚═╝"
    echo -e "${RESET}"
    echo ""
    echo -e "${LARANJA_CLARO}  >> Encerrando o Painel Lobito Code...${RESET}"
    sleep 0.2
    echo -e "${VERDE}  >> By: Arthur${RESET}"
    sleep 0.2
    echo -e "${VERMELHO}  >> Isso nao e uma ferramenta de brinquedo :)${RESET}"
    sleep 1.5
    clear
    exit 0
}

# ---------- GEMINI (PARCEIRO IA) ----------
gemini_man() {
    echo ""
    echo -e "${VERDE}[*] Iniciando Gemini Man...${RESET}"
    sleep 1
    if command -v gemini &>/dev/null; then
        gemini
    else
        echo ""
        echo -e "${VERMELHO}[!] Gemini CLI nao encontrado :/${RESET}"
        echo -e "${LARANJA_CLARO}[!] Instale com:${RESET}"
        echo -e "  ${LARANJA_ESCURO}pkg update && pkg upgrade -y${RESET}"
        echo -e "  ${LARANJA_ESCURO}pkg install nodejs -y${RESET}"
        echo -e "  ${LARANJA_ESCURO}npm install -g @google/gemini-cli${RESET}"
        echo -e "  ${LARANJA_ESCURO}gemini${RESET}"
        echo -e "  ${CINZA}(Na primeira vez vai pedir autenticacao - escolha 1 e logue com sua conta Google)${RESET}"
    fi
    echo ""
    read -p "$(echo -e ${LARANJA_CLARO}'  >> Pressione ENTER pra voltar...'${RESET})"
}

# ---------- FLAPPY BIRD ----------
flappy_bird() {
    echo ""
    echo -e "${VERDE}[*] Iniciando Flappy Bird...${RESET}"
    sleep 1
    if [ -f "$HOME/flappy.sh" ]; then
        cd "$HOME"
        bash flappy.sh
    else
        echo ""
        echo -e "${VERMELHO}[!] Arquivo flappy.sh nao encontrado em $HOME :/${RESET}"
        echo -e "${LARANJA_CLARO}[!] Certifique-se de que o arquivo flappy.sh esta na pasta inicial${RESET}"
    fi
    echo ""
    read -p "$(echo -e ${LARANJA_CLARO}'  >> Pressione ENTER pra voltar...'${RESET})"
}

# ---------- MENU FERRAMENTAS ----------
menu_ferramentas() {
    while true; do
        banner
        echo -e "${VERMELHO}═══════════════════════════════════════════════${RESET}"
        echo ""
        echo -e "  ${LARANJA}[1]${RESET} ${BRANCO}MaxPhisher${RESET}      ${CINZA}::${RESET} ${LARANJA_CLARO}Phishing Tool${RESET}"
        echo -e "  ${LARANJA}[2]${RESET} ${BRANCO}GhostTrack${RESET}      ${CINZA}::${RESET} ${LARANJA_CLARO}Rastreamento${RESET}"
        echo -e "  ${LARANJA}[3]${RESET} ${BRANCO}Infect${RESET}          ${CINZA}::${RESET} ${LARANJA_CLARO}Infect Tool${RESET}"
        echo -e "  ${LARANJA}[4]${RESET} ${BRANCO}TBomb${RESET}           ${CINZA}::${RESET} ${VERMELHO}SMS Bomber (fora do ar) :/${RESET}"
        echo -e "  ${LARANJA}[5]${RESET} ${BRANCO}ToolX${RESET}           ${CINZA}::${RESET} ${LARANJA_CLARO}Multi Ferramentas${RESET}"
        echo ""
        echo -e "  ${VERDE}[6]${RESET} ${BRANCO}Gemini Man${RESET}        ${CINZA}::${RESET} ${VERDE}Parceiro IA :)${RESET}"
        echo -e "  ${VERDE}[7]${RESET} ${BRANCO}Flappy Bird${RESET}       ${CINZA}::${RESET} ${VERDE}Minijogo${RESET}"
        echo ""
        echo -e "  ${LARANJA_ESCURO}[0]${RESET} ${BRANCO}Voltar ao Menu Principal${RESET}"
        echo ""
        echo -e "${VERMELHO}═══════════════════════════════════════════════${RESET}"
        echo ""
        read -p "$(echo -e ${LARANJA_CLARO}'  >> Escolha uma opcao: '${RESET})" ferramenta

        case $ferramenta in
            1)
                echo ""
                echo -e "${VERDE}[*] Iniciando MaxPhisher...${RESET}"
                sleep 1
                if command -v maxphisher &>/dev/null; then
                    maxphisher
                elif [ -f "$HOME/MaxPhisher/maxphisher.py" ]; then
                    cd "$HOME/MaxPhisher"
                    python3 maxphisher.py
                elif [ -f "$HOME/MaxPhisher/maxphisher.sh" ]; then
                    cd "$HOME/MaxPhisher"
                    bash maxphisher.sh
                else
                    echo ""
                    echo -e "${VERMELHO}[!] MaxPhisher nao encontrado :/${RESET}"
                    echo -e "${LARANJA_CLARO}[!] Instale com:${RESET}"
                    echo -e "  ${LARANJA_ESCURO}git clone https://github.com/KasRoudra/MaxPhisher${RESET}"
                    echo -e "  ${LARANJA_ESCURO}cd MaxPhisher && bash maxphisher.sh${RESET}"
                fi
                echo ""
                read -p "$(echo -e ${LARANJA_CLARO}'  >> Pressione ENTER pra voltar...'${RESET})"
                ;;
            2)
                echo ""
                echo -e "${VERDE}[*] Iniciando GhostTrack...${RESET}"
                sleep 1
                if [ -d "$HOME/GhostTrack" ]; then
                    cd "$HOME/GhostTrack"
                    python3 GhostTR.py
                else
                    echo ""
                    echo -e "${VERMELHO}[!] Pasta GhostTrack nao encontrada :/${RESET}"
                fi
                echo ""
                read -p "$(echo -e ${LARANJA_CLARO}'  >> Pressione ENTER pra voltar...'${RESET})"
                ;;
            3)
                echo ""
                echo -e "${VERDE}[*] Iniciando Infect...${RESET}"
                sleep 1
                if [ -d "$HOME/infect" ]; then
                    cd "$HOME/infect"
                    bash infect.sh
                else
                    echo ""
                    echo -e "${VERMELHO}[!] Pasta infect nao encontrada :/${RESET}"
                fi
                echo ""
                read -p "$(echo -e ${LARANJA_CLARO}'  >> Pressione ENTER pra voltar...'${RESET})"
                ;;
            4)
                echo ""
                echo -e "${LARANJA_CLARO}[*] TBomb - Tentando iniciar...${RESET}"
                sleep 1
                if [ -d "$HOME/TBomb" ]; then
                    cd "$HOME/TBomb"
                    ./TBomb.sh
                else
                    echo ""
                    echo -e "${VERMELHO}[!] Pasta TBomb nao encontrada :/${RESET}"
                fi
                echo ""
                read -p "$(echo -e ${LARANJA_CLARO}'  >> Pressione ENTER pra voltar...'${RESET})"
                ;;
            5)
                echo ""
                echo -e "${VERDE}[*] Iniciando ToolX...${RESET}"
                sleep 1
                if command -v toolx &>/dev/null; then
                    toolx
                else
                    echo ""
                    echo -e "${VERMELHO}[!] ToolX nao encontrado :/${RESET}"
                fi
                echo ""
                read -p "$(echo -e ${LARANJA_CLARO}'  >> Pressione ENTER pra voltar...'${RESET})"
                ;;
            6)
                gemini_man
                ;;
            7)
                flappy_bird
                ;;
            0) break ;;
            *) 
                echo ""
                echo -e "${VERMELHO}[!] Opcao invalida! :/${RESET}"
                sleep 1
                ;;
        esac
    done
}

# ---------- MENU PRINCIPAL ----------
menu_principal() {
    while true; do
        banner
        echo -e "${VERMELHO}═══════════════════════════════════════════════${RESET}"
        echo ""
        echo -e "  ${LARANJA}[1]${RESET} ${BRANCO}Ferramentas${RESET}            ${LARANJA_CLARO}(:${RESET}"
        echo -e "  ${LARANJA}[2]${RESET} ${BRANCO}Sair do Painel${RESET}         ${VERMELHO}):${RESET}"
        echo ""
        echo -e "${VERMELHO}═══════════════════════════════════════════════${RESET}"
        echo ""
        read -p "$(echo -e ${LARANJA_CLARO}'  >> Escolha uma opcao: '${RESET})" opcao

        case $opcao in
            1) menu_ferramentas ;;
            2) sair ;;
            *) 
                echo ""
                echo -e "${VERMELHO}[!] Opcao invalida! :/${RESET}"
                sleep 1
                ;;
        esac
    done
}

# ============================================================
#  MAIN
# ============================================================

animacao_entrada
menu_principal
