# $OpenBSD: Makefile,v 1.3 2014/12/06 14:33:51 giovanni Exp $

COMMENT =	MySQL management utilities

MODPY_EGG_VERSION = 1.5.3
DISTNAME =	mysql-utilities-${MODPY_EGG_VERSION}
REVISION =	0
CATEGORIES =	databases
MASTER_SITES =	${MASTER_SITE_MYSQL:=Downloads/MySQLGUITools/}
EXTRACT_SUFX =	.zip

HOMEPAGE =	http://www.mysql.com/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python

USE_GROFF =	Yes

# XXX Regression tests are broken
NO_TEST =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.py

post-install:
	cd ${WRKSRC} && ${MODPY_BIN} setup.py install_man --prefix=${PREFIX}/man

.include <bsd.port.mk>
