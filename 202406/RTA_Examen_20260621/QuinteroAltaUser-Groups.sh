#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Error: Se requieren exactamente 2 parámetros."
    echo "Uso: $0 <usuario_origen_clave> <path_lista_usuarios>"
    exit 1
fi

USUARIO_CLAVE=$1
LISTA_USUARIOS=$2

KEY_HASH=$(sudo grep "^${USUARIO_CLAVE}:" /etc/shadow | awk -F: '{print $2}')

if [ -z "$KEY_HASH" ]; then
    echo "Error: El usuario origen '$USUARIO_CLAVE' no existe o no tiene una clave válida."
    exit 1
fi

echo "Procesando el archivo de usuarios: $LISTA_USUARIOS"

while IFS=, read -r USUARIO GRUPO HOME_DIR || [ -n "$USUARIO" ]; do

	[[ -z "$USUARIO" || "$USUARIO" =~ ^# ]] && continue

	USUARIO=$(echo "$USUARIO" | xargs)
    	GRUPO=$(echo "$GRUPO" | xargs)
    	HOME_DIR=$(echo "$HOME_DIR" | xargs)

	echo "----------------------------------------"

	if ! getent group "$GRUPO" > /dev/null 2>&1; then
        	echo "Creando grupo: $GRUPO"
        	sudo groupadd "$GRUPO"
    	else
        	echo "El grupo '$GRUPO' ya existe."
    	fi

	if ! id "$USUARIO" > /dev/null 2>&1; then
        	echo "Creando usuario: $USUARIO con Home en $HOME_DIR"

       		sudo useradd -m -d "$HOME_DIR" -g "$GRUPO" -p "$KEY_HASH" -s /bin/bash "$USUARIO"
    	else
		echo "El usuario '$USUARIO' ya existe."
    	fi

done < "$LISTA_USUARIOS"

echo "----------------------------------------"
echo "Proceso de alta finalizado de manera exitosa."


