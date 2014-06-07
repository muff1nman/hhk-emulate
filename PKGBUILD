# Maintainer: Andrew DeMaria (muff1nman) <ademaria@mines.edu>

pkgname=hhk-emulate
pkgver=0.0.2
pkgrel=1
pkgdesc="A layout change to emulate a Happy Hacking Keyboard for US keyboards"
arch=('any')
url="https://github.com/muff1nman/hhk-emulate"
license=('APACHE')
depends=('xorg-setxkbmap')
source=("git+https://github.com/muff1nman/hhk-emulate")
sha256sums=('SKIP')

package() {
	install -Dm644 "$srcdir/hhk" "$pkgdir/usr/share/X11/xkb/symbols/hhk"
}

# vim: set ft=PKGBUILD:

