# $OpenBSD: Makefile,v 1.22 2013/03/10 22:28:05 espie Exp $

COMMENT =	Python module to access NOAA's METAR weather reports

MODPY_EGG_VERSION =	0.19
DISTNAME =		pymetar-${MODPY_EGG_VERSION}
PKGNAME =		py-metar-${MODPY_EGG_VERSION}
CATEGORIES =		astro
REVISION =		1

HOMEPAGE =		http://www.schwarzvogel.de/software-pymetar.shtml

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://www.schwarzvogel.de/pkgs/

MODULES =	lang/python

NO_TEST =	Yes
PKG_ARCH =	*

pre-build:
	cp ${WRKSRC}/bin/pymetar ${WRKSRC}/bin/pymet

.include <bsd.port.mk>
