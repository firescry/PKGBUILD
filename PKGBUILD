# Maintainer: firescry

pkgname=zephyr
pkgver=0.1.2
pkgrel=1
pkgdesc="Fan controller for AMDGPU"
arch=('x86_64')
url="https://github.com/firescry/zephyr"
license=('GPL3')
makedepends=('go')
source=("${pkgname}-${pkgver}.tar.gz::https://github.com/firescry/${pkgname}/archive/v${pkgver}.tar.gz")
sha256sums=('951704d5982df25124a91ced68fe38e13ecd6bf9467acffa778f3c059e8e34e5')

build() {
    cd "${srcdir}/${pkgname}-${pkgver}"
    export GOFLAGS="-trimpath"
    go build -o ${pkgname}
}

package() {
    cd "${srcdir}/${pkgname}-${pkgver}"
    install -Dm755 ${pkgname} -t "${pkgdir}/usr/bin/"
    install -Dm644 ${pkgname}.service -t "${pkgdir}/usr/lib/systemd/system/"
    install -Dm644 LICENSE -t "${pkgdir}/usr/share/licenses/${pkgname}/"
}
