#/bin/bash

chrome_settings_path=/usr/share/applications/google-chrome.desktop
darkmode_flag="--enable-features=WebUIDarkMode --force-dark-mode"

sudo sed -i "/Exec=\/usr\/bin\/google-chrome-stable %U$/s/$/ $darkmode_flag/" $chrome_settings_path

sudo sed -i "/Exec=\/usr\/bin\/google-chrome-stable$/s/$/ $darkmode_flag/" $chrome_settings_path

sudo sed -i "/Exec=\/usr\/bin\/google-chrome-stable --incognito$/s/$/ $darkmode_flag/" $chrome_settings_path
