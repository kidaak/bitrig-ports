# $OpenBSD: Makefile,v 1.37 2015/02/16 22:57:10 naddy Exp $

SHARED_ONLY=	Yes

COMMENT=	multimedia player

DISTNAME=	xine-ui-0.99.9
CATEGORIES=	multimedia
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xine/}
EXTRACT_SUFX=	.tar.xz

HOMEPAGE=	http://www.xine-project.org/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	X11 Xext Xft Xinerama Xss Xtst Xv Xxf86vm c curl jpeg m ncurses \
		png pthread readline xine

MODULES=	devel/gettext
RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+2,-guic
LIB_DEPENDS=	graphics/jpeg \
		graphics/png \
		multimedia/xine-lib \
		net/curl \
		devel/readline

MAKE_FLAGS=	V=1

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+=--disable-lirc \
		--disable-nvtvsimple \
		--disable-vdr-keys \
		--without-aalib \
		--without-caca
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
		ac_cv_header_execinfo_h=no

.include <bsd.port.mk>
