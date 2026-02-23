#!/bin/bash

# --- Cores para o Terminal ---
VERDE='\033[0;32m'
AZUL='\033[0;34m'
NC='\033[0m' # Sem cor

echo -e "${AZUL}=========================================${NC}"
echo -e "${VERDE}    FERRAMENTA DE SCAN AUTOMATIZADO      ${NC}"
echo -e "${AZUL}=========================================${NC}"

# 1. Pedir o IP do alvo
echo -n "Digite o IP ou Host do alvo: "
read ALVO

# 2. Criar pasta de resultados se não existir
mkdir -p resultados

# 3. Rodar o Scan
echo -e "\n${AZUL}[*] Iniciando Scan no alvo: $ALVO...${NC}"
nmap -sV -sC -Pn $ALVO -oN resultados/scan_$ALVO.txt

echo -e "\n${VERDE}[+] Scan finalizado! Resultado salvo em: resultados/scan_$ALVO.txt${NC}"
