#!/bin/bash

# Ruta al archivo de configuración de VS Code
SETTINGS_PATH="$HOME/.config/Code/User/settings.json"

# Verifica si jq está instalado, si no, lo instala
if ! command -v jq &> /dev/null
then
    echo "jq no está instalado. Intentando instalar..."
    sudo apt update && sudo apt install -y jq
fi

# Verifica si el archivo de configuración existe y crea uno vacío si no existe
if [ ! -f "$SETTINGS_PATH" ]; then
    echo "{}" > "$SETTINGS_PATH"
fi

# Agrega la configuración al archivo
jq '. + {"workbench.editor.enablePreview": false}' "$SETTINGS_PATH" > temp.json && mv temp.json "$SETTINGS_PATH"
