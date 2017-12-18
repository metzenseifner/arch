main="${HOME}/devel/build"
mkdir -p "$main/package-query"
mkdir -p "$main/yaourt"

if [ -d "$main/package-query" ]; then rm -rf "$main/package-query";fi
  git clone -v -c http.sslVerify=false https://aur.archlinux.org/package-query.git "$main/package-query"
if [ -d "$main/yaourt" ]; then rm -rf "$main/yaourt";fi
  git clone -v -c http.sslVerify=false https://aur.archlinux.org/yaourt.git "$main/yaourt"

echo "==> Installing package-query"
cd "$main/package-query"
makepkg -si --noconfirm
echo "==> Installing yaourt"
cd "$main/yaourt"
makepkg -si --noconfirm
echo "==> Done."

