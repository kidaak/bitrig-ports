# $OpenBSD: Makefile,v 1.1.1.1 2013/03/12 10:39:41 benoit Exp $

COMMENT =		backport of new features added to unittest

MODPY_EGG_VERSION =	0.5.1
DISTNAME =		unittest2-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0
CATEGORIES =		devel

HOMEPAGE =		http://pypi.python.org/pypi/unittest2

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=u/unittest2/}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS =		devel/py-unittest2

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/unittest2
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/unittest2

do-test: fake
	cd ${WRKSRC}/unittest2/test && unit2 discover

.include <bsd.port.mk>
