# $OpenBSD: Makefile,v 1.21 2015/02/20 04:16:20 ajacoutot Exp $

COMMENT=	gtk+3 spelling checker

DISTNAME=	gtkspell3-3.0.7

SHARED_LIBS +=  gtkspell3-3          0.1      # 1.0

CATEGORIES=	textproc x11

HOMEPAGE=	http://gtkspell.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += cairo cairo-gobject dbus-1 enchant expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-3 harfbuzz m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs xcb xcb-render xcb-shm
WANTLIB += z
WANTLIB += c++ c++abi

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gtkspell/}

MODULES=	devel/gettext \
		textproc/intltool \
		x11/gnome

MODGNOME_TOOLS=	gobject-introspection vala

BUILD_DEPENDS=	devel/iso-codes
RUN_DEPENDS=	devel/iso-codes

USE_GMAKE=	Yes

LIB_DEPENDS=	textproc/enchant \
		x11/gtk+3

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
