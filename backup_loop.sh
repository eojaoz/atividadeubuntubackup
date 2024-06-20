#!/bin/bash

# Caminho do arquivo original
ARQUIVO_ORIGINAL="/caminho/do/seu/arquivo.txt"

# Diretório de backup
DIRETORIO_BACKUP="/caminho/do/backup"

while true; do
    # Pega a data e a hora atual
    AGORA=$(date +%H:%M)
    
    # Hora do backup
    HORA_BACKUP="02:00"

    # Verifica se é a hora do backup
    if [ "$AGORA" == "$HORA_BACKUP" ]; then
        # Nome do arquivo de backup com data
        ARQUIVO_BACKUP="$DIRETORIO_BACKUP/arquivo_bkp_$(date +\%Y-\%m-\%d).txt"

        # Copia o arquivo original para o local de backup com data
        cp $ARQUIVO_ORIGINAL $ARQUIVO_BACKUP
        
        # Espera 60 segundos para evitar múltiplas execuções no mesmo minuto
        sleep 60
    fi

    # Espera 30 segundos antes de verificar novamente
    sleep 30
done
