mkdir ~/Projects/AirlineFonts
cd ~/Projects/AirlineFonts
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf

# copy PowerlineSymbols in font directory
# cp PowerlineSymbols.otf ~/.fonts/

# update fonts
# fc-cache -vf ~/.fonts/

# Install the fontconfig file. For newer versions of fontconfig the config path is ~/.config/fontconfig/conf.d/, for older versions it’s ~/.fonts.conf.d/:
# cp 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
cd -
