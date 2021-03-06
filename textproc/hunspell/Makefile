# $OpenBSD: Makefile,v 1.10 2013/06/22 09:31:51 espie Exp $

COMMENT =	spelling, stemming, morphological analysis and generation

DISTNAME =	hunspell-1.3.2
REVISION =	2

SHARED_LIBS =	hunspell-1.3 	0.0 #	.0.0

CATEGORIES =	textproc

HOMEPAGE =	http://hunspell.sourceforge.net/

# GPL/LGPL/MPL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m ncurses ncursesw readline
WANTLIB += c++ c++abi pthread
LIB_DEPENDS=	devel/readline

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=hunspell/}

MODULES =		devel/gettext

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${WRKBUILD}/src/hunspell/.libs"
CONFIGURE_ARGS =	${CONFIGURE_SHARED} \
			--with-ui \
			--with-readline

# default dictionary
RUN_DEPENDS =		textproc/mozilla-dicts/en-GB

TEST_DEPENDS =	shells/bash

pre-configure:
	${SUBST_CMD} ${WRKSRC}/tests/test.sh \
		${WRKSRC}/src/tools/hunspell.cxx \
		${WRKSRC}/man/hu/hunspell.1 \
		${WRKSRC}/man/hunspell.1

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/hunspell
	ln -sf ${LOCALBASE}/share/mozilla-dicts/en-GB.aff \
		${PREFIX}/share/hunspell/default.aff
	ln -sf ${LOCALBASE}/share/mozilla-dicts/en-GB.dic \
		${PREFIX}/share/hunspell/default.dic

.include <bsd.port.mk>
