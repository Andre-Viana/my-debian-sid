#!/bin/bash
echo "Copiando scripts..."
cp -a config/. $HOME/.config/
## Creating common user directories
xdg-user-dirs-update
# Remenbem user name on the login screen
echo "Mostrando o nome do usuário no login..."
sudo sed -i "s/#greeter-hide-users=false/greeter-hide-users=false/" /etc/lightdm/lightdm.conf
#
# Replace looked screen for the login manager
echo "Substituindo tela de bloqueio pelo gestor de login..."
sudo sed -i "s/light-locker-command --lock/dm-tool switch-to-greeter/" /usr/bin/xflock4
#
#Coping Rofi themes
echo -e "Copiando temas do Rofi..."
sudo cp -a config/rofi/themes/. /usr/share/rofi/themes/

echo -e "Pronto!\n"

read -p "Tecle 'enter' para continuar... " segue

exit 0

