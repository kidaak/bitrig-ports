# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		Noto Sans CJK JP
DISTNAME =		NotoSansCJKJP-hinted
PKGNAME =		noto-sans-cjk-jp-20150618
CATEGORIES =		fonts

HOMEPAGE =		http://www.google.com/get/noto/

# OFL-like custom license
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://noto-website.storage.googleapis.com/pkgs/

EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

FONTDIR =		${PREFIX}/share/fonts/noto-sans-cjk-jp
DOCDIR =		${PREFIX}/share/doc/noto-sans-cjk-jp

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIR}/*.otf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIR}/LICENSE_CJK.txt ${DOCDIR}

.include <bsd.port.mk>
