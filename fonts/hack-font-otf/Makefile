# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

V =			2_010
COMMENT =		TrueType Hack font
DISTNAME =		Hack-v${V}-otf
PKGNAME =		hack-font-otf-${V}
CATEGORIES =		fonts

HOMEPAGE =		http://sourcefoundry.org/hack/

# OFL-like custom license
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://github.com/chrissimpkins/Hack/releases/download/v2.010/
EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

FONTDIR =		${PREFIX}/share/fonts/hack-font-otf

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIR}/*.otf ${FONTDIR}

.include <bsd.port.mk>
