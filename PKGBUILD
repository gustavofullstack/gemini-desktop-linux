# Maintainer: gustavomar <gustavomar.fullstack@gmail.com>
pkgname=gemini-desktop-linux
pkgver=1.0.0
pkgrel=1
pkgdesc="Gemini / Gemini Spark em janela própria para Linux (não oficial, perfil Firefox isolado)"
arch=('any')
url="https://github.com/gustavomar/gemini-desktop-linux"
license=('MIT')
depends=('firefox' 'sh')
makedepends=('curl')
source=("$pkgname-$pkgver.tar.gz::$url/archive/v$pkgver.tar.gz")
sha256sums=('SKIP')

package() {
    cd "$pkgname-$pkgver"
    install -Dm755 gemini-desktop "$pkgdir/usr/bin/gemini-desktop"
    install -Dm755 hyprland/gemini-toggle "$pkgdir/usr/bin/gemini-toggle"
    install -Dm644 profile/user.js "$pkgdir/usr/share/gemini-desktop/profile/user.js"
    install -Dm644 profile/chrome/userChrome.css "$pkgdir/usr/share/gemini-desktop/profile/chrome/userChrome.css"
    install -Dm644 gemini-desktop.desktop "$pkgdir/usr/share/applications/gemini-desktop.desktop"
    install -Dm644 LICENSE "$pkgdir/usr/share/licenses/$pkgname/LICENSE"
    curl -fsSL "https://www.gstatic.com/images/branding/productlogos/gemini_2025/v1/web-512dp/logo_gemini_2025_color_2x_web_512dp.png" \
        -o gemini-desktop.png && install -Dm644 gemini-desktop.png "$pkgdir/usr/share/icons/hicolor/512x512/apps/gemini-desktop.png" || true
}
