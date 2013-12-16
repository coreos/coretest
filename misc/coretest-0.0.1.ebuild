#
# $Header:$
#

EAPI=4
CROS_WORKON_COMMIT=""
CROS_WORKON_PROJECT="coreos/coretest"
CROS_WORKON_LOCALNAME="coretest"
CROS_WORKON_REPO="git://github.com"
inherit toolchain-funcs cros-workon

DESCRIPTION="Sanity tests for CoreOS"
HOMEPAGE="https://github.com/coreos/coretest"
SRC_URI=""

LICENSE="APACHE"
SLOT="0"
KEYWORDS="amd64 arm x86"
IUSE=""

DEPEND=">=dev-lang/go-1.1"

src_compile() {
	./build
}

src_install() {
	dobin ${S}/${PN}
}
