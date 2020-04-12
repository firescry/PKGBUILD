# Maintainer: firescry

pkgname=zephyr
pkgver=0.1.1
pkgrel=1
pkgdesc="Fan controller for AMDGPU"
arch=('x86_64')
url="https://github.com/firescry/zephyr"
license=('GPL3')
makedepends=('go')
source=("${pkgname}-${pkgver}.tar.gz::https://github.com/firescry/${pkgname}/archive/v${pkgver}.tar.gz")
sha256sums=('79d41c9fc0500ed54ad48e16ef91c84d3b93f46e0b281636886ee203c7cf6589')

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
