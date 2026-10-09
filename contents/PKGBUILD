# Maintainer: Your Name <you@example.com>
pkgname=tartersauce
pkgver=1.0
pkgrel=1
pkgdesc="Runs tar apps using a Zenity interface"
arch=('any')
depends=('bash' 'zenity' 'tar')
# This triggers the system to automatically refresh file managers when installed
makedepends=('desktop-file-utils')

# Tell Arch to use your local script and desktop file
source=("tartersauce.sh"
        "tartersauce.desktop"
        "tartersauce.png")

# Use 'SKIP' for local files so you don't have to keep calculating hashes
sha256sums=('SKIP'
            'SKIP'
            'SKIP')

package() {
    # 1. Install the script safely to /usr/bin/ instead of /etc/
    install -Dm755 "${srcdir}/tartersauce.sh" "${pkgdir}/usr/bin/tartersauce.sh"

    # 2. Add the icon image in the same location as the file
    install -Dm755 "${srcdir}/tartersauce.png" "${pkgdir}/usr/bin/tartersauce.png"

    # 3. Install the desktop file so Linux recognizes it as a system app
    install -Dm644 "${srcdir}/tartersauce.desktop" "${pkgdir}/usr/share/applications/tartersauce.desktop"
}
