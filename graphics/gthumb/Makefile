# $OpenBSD: Makefile,v 1.86 2014/05/19 08:04:11 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	image viewer and browser for GNOME

GNOME_PROJECT=	gthumb
GNOME_VERSION=	3.2.8
REVISION=	0

API_V=		${GNOME_VERSION:R}
SUBST_VARS=	API_V

CATEGORIES=	graphics

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject clutter-1.0 clutter-gtk-1.0 cogl
WANTLIB += dbus-1 exiv2 expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gstreamer-1.0 gthread-2.0 gtk-3 harfbuzz jpeg json-glib-1.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs rsvg-2 secret-1 soup-2.4
WANTLIB += soup-gnome-2.4 tiff webkit2gtk-3.0 webp xcb
WANTLIB += xcb-render xcb-shm z gstvideo-1.0
WANTLIB += c++ c++abi

MODULES=	devel/dconf \
		devel/gettext \
		x11/gnome

# web albums
BUILD_DEPENDS +=	devel/bison

BUILD_DEPENDS +=	multimedia/gstreamer1/plugins-base

LIB_DEPENDS=	graphics/clutter/clutter-gtk  \
		graphics/exiv2 \
		graphics/libwebp \
		multimedia/gstreamer1/core \
		www/webkit,gtk3>=2.2.0v0 \
		x11/gnome/librsvg

RUN_DEPENDS=	graphics/dcraw \
		multimedia/gstreamer1/plugins-base

MODGNOME_TOOLS += desktop-file-utils gtk-update-icon-cache shared-mime-info yelp

MODGNOME_CPPFLAGS=	-I${X11BASE}/include
MODGNOME_LDFLAGS=	-L${X11BASE}/lib

CONFIGURE_STYLE=	gnu

post-install:
	rm ${PREFIX}/lib/gthumb/extensions/*.{a,la}

.include <bsd.port.mk>
