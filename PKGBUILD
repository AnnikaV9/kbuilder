pkgname=kbuilder
pkgver=0.2.4
pkgrel=1
pkgdesc="A bash script for building custom kernel packages for Arch Linux"
arch=("x86_64")
url="https://github.com/AnnikaV9/$pkgname"
license=("Unlicense")
provides=("$pkgname")
depends=("bash" "pacman" "run-parts" "sed" "sudo" "curl" "coreutils")
source=("$pkgname-$pkgver.tar.gz")

package() {
  install -Dm755 "$srcdir/$pkgname-$pkgver/kbuilder" "$pkgdir/usr/bin/kbuilder"
  install -Dm644 "$srcdir/$pkgname-$pkgver/LICENSE" "$pkgdir/usr/share/licenses/$pkgname/LICENSE"
  install -Dm644 "$srcdir/$pkgname-$pkgver/documentation.html" "$pkgdir/usr/share/doc/$pkgname/documentation.html"
  sudo mkdir -p /etc/kbuilder/hooks
}
