# $OpenBSD: Makefile,v 1.5 2014/07/03 02:11:18 jturner Exp $

COMMENT =		C++ MIME library

DISTNAME =		mimetic-0.9.8
REVISION =		0
CATEGORIES =		mail devel

SHARED_LIBS =		mimetic	1.0 #0.0

HOMEPAGE =		http://www.codesink.org/mimetic_mime_library.html
MASTER_SITES =		http://www.codesink.org/download/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		m

MODULES =		gcc4

MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c++

AUTOCONF_VERSION =	2.64
AUTOMAKE_VERSION =	1.11

BUILD_DEPENDS =		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

CONFIGURE_STYLE =	gnu

USE_GMAKE =		Yes
MAKE_ENV =		AUTOCONF_VERSION="${AUTOCONF_VERSION}"

.include <bsd.port.mk>
