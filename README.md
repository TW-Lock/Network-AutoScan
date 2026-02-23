# 🛡️ Network-AutoScan (Bash Script)

Script automatizado para execução de scans de rede utilizando o Nmap. Projetado para agilizar a fase de reconhecimento em auditorias de segurança.

### 🚀 Funcionalidades
* **Interatividade:** Solicita o IP/Host do alvo dinamicamente.
* **Automação:** Executa scans de versão (-sV) e scripts padrão (-sC).
* **Organização:** Cria automaticamente uma pasta `resultados/` e salva logs com o nome do alvo.

### 🛠️ Como usar
1. Dê permissão de execução:
   ```bash
   chmod +x autoscan.sh
   ```
2. Execute o script:
   ```bash
   ./autoscan.sh
   ```

### 📋 Requisitos
* Linux (Kali, Ubuntu, etc)
* Nmap instalado

---
**Desenvolvido por: Lukas (TW-Lock)**