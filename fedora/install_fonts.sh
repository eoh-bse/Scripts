#!/usr/bin/env bash

echo_error_for_failed_command () {
  if [ $? -ne 0 ]; then
    echo "Error while trying to install ${1}!"
  fi
}

echo "Install Mac SanFrancisco Font? (y/n)"
read answer

if [ "$answer" = "y" ]; then
  wget https://github.com/AppleDesignResources/SanFranciscoFont/archive/master.zip -O ./san_francisco_font.zip
  sudo unzip san_francisco_font.zip -d /usr/share/fonts/san_francisco
  rm san_francisco_font.zip
  sudo fc-cache -f -v
  echo_error_for_failed_command "San Francisco Fonts"
fi

echo "Install Hack font? (y/n)"
read answer

if [ $answer = "y" ]; then
  echo "Enter version: "
  read hack_version

  hack_zip_file=Hack-v$hack_version-ttf.zip
  wget https://github.com/source-foundry/Hack/releases/download/v$hack_version/$hack_zip_file
  unzip $hack_zip_file
  mv ttf hack
  sudo mv hack /usr/share/fonts/
  sudo fc-cache -f -v
  rm $hack_zip_file
fi

