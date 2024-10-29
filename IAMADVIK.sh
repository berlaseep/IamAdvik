#!/bin/bash

# Colores para dar estilo al texto
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # Sin color

# Banner en ASCII con colores
echo -e "${BLUE}                         __,,,,_${NC}"
echo -e "${BLUE}          _ __..-;''\`--/'/ /.',-`-.${NC}"
echo -e "${BLUE}      (\`/' \` |  \\ \\ \\\\ / / / / .-'/\`,_${NC}"
echo -e "${BLUE}     /'\`\ \\   |  \\ | \\| // // / -.,/_,'-,${NC}"
echo -e "${BLUE}    /<7' ;  \\ \\  | ; ||/ /| | \\/    |'-/,/-.,_,/')${NC}"
echo -e "${BLUE}   /  _.-, \`,-\\,__|  _-| / \\ \\/|_/  |    '-/.;.'\\${NC}"
echo -e "${BLUE}   \`-  f/ ;      / __/ \\__ \`/ |__/ |${NC}"
echo -e "${BLUE}        '-      |  -| =|\\_  \\  |-' |${NC}"
echo -e "${BLUE}              __/   /_..-' \`  ),'  //${NC}"
echo -e "${RED}     IamAdvik ((__.-'((___..-'' \\__.'${NC}"

# Pregunta al usuario por su nombre con mejor formato
read -p "Crearemos tu usuario. ¿Cómo te quieres llamar? " N

# Creación del usuario
adduser "$N"

# Cambio de directorio al del usuario
cd "/home/$N" || exit 1  # Incluimos '|| exit 1' para salir si hay algún error

# Mensaje de progreso
echo -e "${GREEN}Instalando herramientas de Advik...${NC}"

# Creación y movimiento al escritorio
mkdir -p Desktop
cd Desktop || exit 1

# Clonación del repositorio de herramientas
git clone https://github.com/unkn0wnh4ckr/hackers-tool-kit

# Ejecución del script de instalación
cd hackers-tool-kit || exit 1
python3 install.py  # Asegurarse de que python3 está instalado en lugar de python

# Confirmación de la instalación
echo -e "${GREEN}hackers-tool-kit instalada correctamente${NC}"

# Volver al escritorio y crear un archivo importante
cd ..
echo -e "${BLUE}Creando archivo importante...${NC}"
echo "Ve estos videos https://youtube.com/playlist?list=PLMd59HZRUmEiPpVXGQcaM5qX4tSFwjgGl&si=idVcJdI4qw7Vjd6k https://youtu.be/M3AayeYuzMI?si=ZFmjKkV5sQ1IXb88 https://youtu.be/tNeRFm2jY7c?si=Vp5HBoJc5i7mXCz4." > Leeme.txt

# Mensaje final
echo -e "${GREEN}Script finalizado exitosamente.${NC}"

