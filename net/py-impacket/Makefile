# $OpenBSD: Makefile,v 1.9 2014/09/29 08:11:31 dcoppa Exp $

COMMENT =		Python classes providing access to network packets

MODPY_EGG_VERSION =	0.9.12
DISTNAME =		impacket-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =   		net security

HOMEPAGE =		http://corelabs.coresecurity.com/index.php?module=Wiki&action=view&type=tool&name=Impacket

# Apache modified
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=i/impacket/}

MODULES =		lang/python

MODPY_ADJ_FILES =	impacket/ese.py \
			impacket/logger.py \
			impacket/tds.py

# one example also uses python-tkinter, but it's pretty heavy and
# not required for normal use.
RUN_DEPENDS =		net/py-pcapy \
			security/py-crypto>=2.6 \
			security/py-openssl

NO_TEST =		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/examples/nmapAnswerMachine.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-impacket
	mv ${PREFIX}/bin/*.py ${PREFIX}/share/examples/py-impacket/
	mv ${PREFIX}/share/doc/impacket ${PREFIX}/share/doc/py-impacket
# Fix permissions
	chmod 0444 ${PREFIX}/share/doc/py-impacket/*
# Add missing shebangs
.for s in loopchain nmapAnswerMachine os_ident uncrc32
	perl -pi -e 'print "#!${MODPY_BIN}\n" if $$. == 1' \
		${PREFIX}/share/examples/py-impacket/${s}.py
.endfor

.include <bsd.port.mk>
