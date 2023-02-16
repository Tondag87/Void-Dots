# Void-Dots
My First DWM Rice on Void Linux

![2023-02-16-071045_1920x1080_scrot](https://user-images.githubusercontent.com/89696594/219378571-1ff855f0-b88e-4ad1-a087-edbce0e5e6d5.png)

![2023-02-16-071320_1920x1080_scrot](https://user-images.githubusercontent.com/89696594/219378717-d468c757-14e0-4a3a-ba43-8390d4f49510.png)

![2023-02-16-071526_1920x1080_scrot](https://user-images.githubusercontent.com/89696594/219378751-19db37fb-4222-4cd2-b5ca-786909106192.png)

![2023-02-16-071659_1920x1080_scrot](https://user-images.githubusercontent.com/89696594/219378900-154d795f-944c-4d37-ab5e-35a5f5d98ee5.png)

# Welcome to My First Void Linux Rice for DWM

What you need 
  * All Components Needed to Compile Suckless Utilities
  * LXAppearance
  * Rofi (For PowerMenu)
  * Neovim
  * Dunst
  * Firefox
  * Feh
  * Picom-Ibhagwan
  * Papirus-Icons
# -- I recommend ZSH, Oh-my-zsh and Powerlevel10k for the full cmdline look but its not neede --

# How do I Install?
git clone this repo https://github.com/tondag87/Void-Dots.git
cd into downloaded_directory/Void-Dots
# _________________________________
# Lets Move Your Old Configs
cd "DOWNLOAD_LOCATION/NordBSD"
mv ~/.config/suckless ~/.config/suckless-backup && cp -r .config/suckless/ ~/.config/suckles 
mv ~/.config/dunst ~/.config/dunst-backup && cp -r .config/dunst/ ~/.config/dunst
mv ~/.config/rofi ~/.config/rofi-backup && cp -r .config/rofi/ ~/.config
mv ~/.config/nvim ~/.config/nvim-backup && cp -r .config/nvim/ ~/.config/nvim
mv ~/.config/neofetch ~/.config/neofetch-backup && cp -r .config/neofetch/ ~/.config/neofetch
mkdir ~/.dwm && cp -r .dwm ~/
mkdir ~/.themes && cp -r .themes ~/
# _________________________________
# Lets Get the Wallpaper, Volume Notification, Ublock Origin Config, Stylus and Firefox Color Setup
cp -r Accessories ~/Downloads
mv ~/Downloads/Accessories/everforest-3.png ~/Downloads
cp volnotification ~/
# Firefox Setup (Stylus and Firefox Color)
 Search the Firefox Extensions for Stylus and Install
        After that left click the extension and click on settings 
        Look on the left hand side and under backup select import 
        Then find stylus-2023-02-16.json and select it, EverForest Themes should be applied
        Websites include Github, StartPage, Youtube and Reddit
        
				
 Search the Firefox Extensions for Firefox Color and Install
        Then Follow the Pictures for Help on Themeing as Firefox Color Doesn't Allow for Importing (Colors are #293136, #D3C6AA and #333C43)
![2023-02-16-091936_1920x1080_scrot](https://user-images.githubusercontent.com/89696594/219389991-349e23c5-b247-4c70-8882-825ccb03c07e.png)
![2023-02-16-091938_1920x1080_scrot](https://user-images.githubusercontent.com/89696594/219390093-5df6b899-9b0f-4ee6-a541-8869198d7dbd.png)
![2023-02-16-091940_1920x1080_scrot](https://user-images.githubusercontent.com/89696594/219390137-1efcdbf4-efef-47f6-a175-af1e58b9ff15.png)

        
        
  
