# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999
#hackport: flags: -pedantic

CABAL_FEATURES="lib profile haddock hoogle hscolour" # test-suite
inherit haskell-cabal
RESTRICT="test" # Missing files

DESCRIPTION="Wingman plugin for Haskell Language Server"
HOMEPAGE="https://haskellwingman.dev"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND="dev-haskell/aeson:=[profile?]
	dev-haskell/data-default:=[profile?]
	dev-haskell/extra:=[profile?]
	dev-haskell/fingertree:=[profile?]
	dev-haskell/generic-lens:=[profile?]
	dev-haskell/ghc-exactprint:=[profile?]
	dev-haskell/ghc-source-gen:=[profile?]
	>=dev-haskell/ghcide-1.0.0.0:=[profile?] <dev-haskell/ghcide-1.1:=[profile?]
	>=dev-haskell/hls-plugin-api-1.0.0.0:=[profile?] <dev-haskell/hls-plugin-api-1.1:=[profile?]
	dev-haskell/lens:=[profile?]
	dev-haskell/lsp:=[profile?]
	dev-haskell/mtl:=[profile?]
	>=dev-haskell/refinery-0.3:=[profile?] <dev-haskell/refinery-0.4:=[profile?]
	>=dev-haskell/retrie-0.1.1.0:=[profile?]
	>=dev-haskell/shake-0.17.5:=[profile?]
	dev-haskell/syb:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-lang/ghc-8.6.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4.0.1"
#	test? ( dev-haskell/checkers
#		dev-haskell/hie-bios
#		dev-haskell/hspec
#		dev-haskell/hspec-expectations
#		dev-haskell/lsp-test
#		dev-haskell/lsp-types
#		dev-haskell/megaparsec
#		dev-haskell/quickcheck
#		dev-haskell/tasty
#		>=dev-haskell/tasty-ant-xml-1.1.6
#		dev-haskell/tasty-expected-failure
#		dev-haskell/tasty-golden
#		dev-haskell/tasty-hunit
#		dev-haskell/tasty-rerun )

src_configure() {
	haskell-cabal_src_configure \
		--flag=-pedantic
}
