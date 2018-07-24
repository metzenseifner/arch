# Install terminus font
yaourt terminus-font

# Set your default font
# NOTE: You can setup the font size and codepage mappings using the font
# definition as shown below.
#
# ter-<X><SIZE><STYLE>
# where <X> is a character identifying the code page as listed bellow

# names mappings  covered codepage(s)
# 
# ter-1* iso01, iso15, cp1252 ISO8859-1, ISO8859-15, Windows-1252
# ter-2* iso02, cp1250  ISO8859-2, Windows-1250
# ter-7* iso07, cp1253  ISO8859-7, Windows-1253
# ter-9* iso09, cp1254  ISO8859-9, Windows-1254
# ter-c* cp1251, iso05  Windows-1251, ISO8859-5
# ter-d* iso13, cp1257  ISO8859-13, Windows-1257
# ter-g* iso16   ISO8859-16
# ter-i* cp437   IBM-437
# ter-k* koi8r   KOI8-R
# ter-m* mik   Bulgarian-MIK
# ter-p* pt154   Paratype-PT154
# ter-u* koi8u   KOI8-U
# ter-v* all listed above all listed above and many others (about 110
#  and many others  language sets), 8 foreground colors
# 
#
# names style
# 
# ter-*n normal
# ter-*b bold
# ter-*f framebuffer-bold

echo "FONT=ter-124n" | sudo tee /etc/vconsole.conf

# Set the font to load early on so you can have the fonts when unlocking your hardrive.
sudo vim /etc/mkinitcpio.conf
# Add "consolefont" into HOOKS

# Rebuild the linux image
sudo mkinitcpio -p linux

# Reboot
sudo reboot
