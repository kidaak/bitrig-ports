# $OpenBSD: Makefile,v 1.18 2013/03/11 10:50:26 espie Exp $

COMMENT=	parser generator in Python

DISTNAME=	TPG-3.1.0
PKGNAME=	py-${DISTNAME:L}
REVISION =	6
CATEGORIES=	devel

HOMEPAGE=	http://christophe.delord.free.fr/en/tpg/

# LGPL 
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://christophe.delord.free.fr/soft/tpg/

MODULES=	lang/python

DOCDIR=		${PREFIX}/share/doc/py-tpg
EXAMPLESDIR=	${PREFIX}/share/examples/py-tpg

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/* ${DOCDIR}
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/* ${EXAMPLESDIR}

do-test:
	@cd ${WRKSRC} && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} ./tpg_tests.py

.include <bsd.port.mk>
