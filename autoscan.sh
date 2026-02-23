#!/bin/basho

# --- Cores ---
VERDE='\033[0;32m'
AMARELO='\033[1;33m'
AZUL='\033[0;34m'
VERMELHO='\033[0;31m'
NC='\033[0m'

echo -e "${AZUL}=========================================${NC}"
echo -e "${VERMELHO}    AUTO-SCANNER DE VULNERABILIDADES     ${NC}"
echo -e "${AZUL}=========================================${NC}"

echo -n "Digite o IP ou Host do alvo: "
read ALVO

mkdir -p resultados

echo -e "\n${AMARELO}[*] 1. Iniciando Reconhecimento de Serviços...${NC}"
# Scan rápido para ver o que está aberto
nmap -sV $ALVO -oN resultados/servicos_$ALVO.txt

echo -e "\n${VERMELHO}[!] 2. Buscando Vulnerabilidades (CVEs)...${NC}"
echo -e "${AMARELO}Isso pode demorar alguns minutos dependendo do alvo...${NC}"

# O segredo: --script vuln busca por falhas conhecidas
nmap -sV --script vuln $ALVO -oN resultados/VULNS_$ALVO.txt

echo -e "\n${VERDE}[+] Auditoria completa!${NC}"
echo -e "Logs salvos na pasta 'resultados/':"
ls resultados/ | grep $ALVO
