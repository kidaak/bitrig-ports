# $OpenBSD: Makefile,v 1.13 2015/02/03 15:51:52 abieber Exp $

BROKEN = 	needs work on bitrig.

COMMENT =	module to support sending messages to syslog

NPM_VERSION =	1.1.7
NPM_NAME =	node-syslog
CATEGORIES =	sysutils

REVISION = 	7

HOMEPAGE =	https://github.com/schamane/node-syslog

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/node

CONFIGURE_STYLE =	npm ext

NO_TEST =		Yes

pre-configure:
	${SUBST_CMD} ${WRKDIST}/binding.gyp

.include <bsd.port.mk>
