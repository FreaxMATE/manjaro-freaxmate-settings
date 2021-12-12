# Maintainer: Konstantin Unruh <freaxmate@protonmail.com>

pkgname=manjaro-freaxmate-settings
pkgver=20211210
pkgrel=1
pkgdesc="FreaxMATE settings."
arch=('any')
url="https://github.com/FreaxMATE/$pkgname"
license=('GPL3')
depends=('mate-panel')
makedepends=()
source=('git+https://github.com/FreaxMATE/manjaro-freaxmate-settings.git')
sha512sums=('SKIP')

pkgver() {
    date +%Y%m%d
}

package() {
  cd "$pkgname"
  install -d $pkgdir/etc
  cp -r skel $pkgdir/etc
  install -d $pkgdir/usr/share/glib-2.0
  cp -r schemas $pkgdir/usr/share/glib-2.0
  install -d $pkgdir/usr/bin
  cp scripts/* $pkgdir/usr/bin
  install -d $pkgdir/usr/share/mate-panel
  cp layouts/* $pkgdir/usr/share/mate-panel
  install -d $pkgdir/usr/share/manjaro-freaxmate-settings
  cp -r shortcuts $pkgdir/usr/share/manjaro-freaxmate-settings
  cp -r theming $pkgdir/usr/share/manjaro-freaxmate-settings

}

