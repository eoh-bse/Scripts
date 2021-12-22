#/bin/bash

echo_error_for_failed_command () {
  if [ $? -ne 0 ]; then 
    echo "Error while trying to install ${1}!"
  fi
}

echo "Authorize to install the following fonts: MS Fonts, Fonts from Windows on this machine and Mac's San Francisco Fonts"

echo "Install MS Fonts? (y/n)"
read answer

if [ "$answer" = "y" ]; then
  sudo apt install ttf-mscorefonts-installer
  sudo fc-cache -f -v
  echo_error_for_failed_command "MS Fonts"
fi

echo "Install Mac SanFrancisco Font? (y/n)"
read answer

if [ "$answer" = "y" ]; then
  wget https://github.com/AppleDesignResources/SanFranciscoFont/archive/master.zip -O ./san_francisco_font.zip
  sudo unzip san_francisco_font.zip -d /usr/share/fonts/san_francisco
  rm san_francisco_font.zip 
  sudo fc-cache -f -v
  echo_error_for_failed_command "San Francisco Fonts"
fi