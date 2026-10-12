#!/bin/sh
# Instala sem root em ~/.local (use o PKGBUILD para instalar no sistema).
set -e
cd "$(dirname "$0")"
PREFIX="${PREFIX:-$HOME/.local}"
SHARE="$PREFIX/share/gemini-desktop"
mkdir -p "$PREFIX/bin" "$SHARE/profile/chrome" "$PREFIX/share/applications"
cp profile/user.js "$SHARE/profile/"
cp profile/chrome/userChrome.css "$SHARE/profile/chrome/"
sed "s|/usr/share/gemini-desktop|$SHARE|" gemini-desktop > "$PREFIX/bin/gemini-desktop"
chmod +x "$PREFIX/bin/gemini-desktop"
sed "s|^Exec=gemini-desktop|Exec=$PREFIX/bin/gemini-desktop|" gemini-desktop.desktop \
    > "$PREFIX/share/applications/gemini-desktop.desktop"
# Ícone baixado do Google na instalação (marca registrada: não é redistribuída neste repo)
ICON_URL="https://www.gstatic.com/images/branding/productlogos/gemini_2025/v1/web-512dp/logo_gemini_2025_color_2x_web_512dp.png"
ICON_DIR="$PREFIX/share/icons/hicolor/512x512/apps"
mkdir -p "$ICON_DIR"
curl -fsSL "$ICON_URL" -o "$ICON_DIR/gemini-desktop.png" || echo "aviso: ícone não baixado"
update-desktop-database "$PREFIX/share/applications" 2>/dev/null || true
gtk-update-icon-cache -f -t "$PREFIX/share/icons/hicolor" 2>/dev/null || true
echo "Instalado. Abra 'Gemini' no menu ou rode: gemini-desktop"
