# $Id: PKGBUILD 213730 2014-05-28 19:24:41Z andyrtr $
# Maintainer: Andreas Radke <andyrtr@archlinux.org>
# Maintainer: Jan de Groot <jgc@archlinux.org>

pkgname=xkeyboard-config-hhk
pkgver=2.12
pkgrel=1
pkgdesc="X keyboard configuration files with a patch for a layout emulating a happy hacking keyboard"
arch=(any)
license=('custom')
url="http://www.freedesktop.org/wiki/Software/XKeyboardConfig"
makedepends=('intltool' 'xorg-xkbcomp')
provides=('xkeyboard-config' 'xkbdata')
replaces=('xkeyboard-config' 'xkbdata')
conflicts=('xkeyboard-config' 'xkbdata')
source=(
	http://xorg.freedesktop.org/archive/individual/data/${pkgname/-hhk/}/${pkgname/-hhk/}-${pkgver}.tar.bz2
	git+https://github.com/muff1nman/hhk-emulate
)
sha256sums=('65b62b95b77b609cb6c0439e0148c48c3ab7dcb5c90eb8d34cf1cb8f360cca44' 'SKIP')

prepare() {
	cd ${srcdir}/${pkgname/-hhk/}-${pkgver}
	patch -p1 < ${srcdir}/hhk-emulate/hhk.patch
}

build() {
	cd ${srcdir}/${pkgname/-hhk/}-${pkgver}

  ./configure --prefix=/usr \
      --with-xkb-base=/usr/share/X11/xkb \
      --with-xkb-rules-symlink=xorg \
      --enable-compat-rules=yes
  make
 }
 
 package() { 
	cd ${srcdir}/${pkgname/-hhk/}-${pkgver}

  make DESTDIR="${pkgdir}" install
  rm -f "${pkgdir}/usr/share/X11/xkb/compiled"

  install -m755 -d "${pkgdir}/var/lib/xkb"
  install -m755 -d "${pkgdir}/usr/share/licenses/${pkgname}"
  install -m644 COPYING "${pkgdir}/usr/share/licenses/${pkgname}/"
}
