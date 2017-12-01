mkdir -p "~/devel/build"
cd "~/devel/build"
git clone https://aur.archlinux.org/package-query.git
git clone https://aur.archlinux.org/yaourt.git

cd package-query
makepkg -si
cd ../yaourt
makepkg -si

