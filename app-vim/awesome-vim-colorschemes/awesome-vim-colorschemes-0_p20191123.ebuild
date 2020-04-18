# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit vim-plugin

DESCRIPTION="vim plugin: Collection of awesome color schemes for Vim, merged for quick use"
HOMEPAGE="https://github.com/rafi/awesome-vim-colorschemes"
LICENSE="MIT public-domain vim.org vim"
KEYWORDS="~amd64 ~hppa ~mips ~sparc ~x86 ~x86-linux ~x64-macos ~x86-macos"
COMMIT="b5037cbf87ee4b0beed91adb33c339122e58326f"
SRC_URI="https://github.com/rafi/${PN}/archive/${COMMIT}.tar.gz -> ${P}.tar.gz"

VIM_PLUGIN_HELPTEXT="This plugin is a collection of awesome color schemes for Neo/vim, merged for quick use."
RDEPEND="
	app-vim/airline
	!app-vim/colorschemes
"

S="${WORKDIR}/${PN}-${COMMIT}"
