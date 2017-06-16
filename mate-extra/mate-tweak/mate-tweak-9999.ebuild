# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

PYTHON_COMPAT=( python3_{4,5,6} )

inherit distutils-r1

DESCRIPTION="Tweak tool for MATE, a fork of MintDesktop"
HOMEPAGE="https://launchpad.net/ubuntu/+source/mate-tweak"

if [[ ${PV} == *9999* ]];then
	inherit git-r3
	EGIT_REPO_URI="https://bitbucket.org/ubuntu-mate/mate-tweak"
	KEYWORDS=""
else
	SRC_URI="https://bitbucket.org/ubuntu-mate/${PN}/get/${PV}.tar.bz2 -> ${P}.tar.bz2"
	KEYWORDS="~amd64 ~x86 ~arm"
	HASH="0da9e6155652"
	S="${WORKDIR}/ubuntu-mate-${PN}-${HASH}"
fi

LICENSE="GPL-2+"
SLOT="0"
IUSE="nls"

DEPEND="
	${PYTHON_DEPS}
	dev-python/setuptools[${PYTHON_USEDEP}]
	sys-devel/gettext
    dev-python/python-distutils-extra"
RDEPEND="dev-libs/glib:2
	dev-python/psutil
	dev-python/pygobject:3
	dev-python/setproctitle
	gnome-base/dconf
	mate-base/caja
	>=mate-base/mate-desktop-1.14
	mate-base/mate-panel
	mate-extra/mate-media
	sys-process/psmisc
	x11-libs/gdk-pixbuf:2
	x11-libs/gtk+:3
	>=x11-libs/libnotify-0.7"

pkg_postinst(){
	echo
	elog "If you're using x11-misc/compton, you can create a local configuration file"
	elog "depending on the window manager you're using (metacity or marco)."
	elog "The configuration must be in ~/.config/wmname-compton.conf, begin 'wmname'"
	elog "the window manager."
	echo
}
