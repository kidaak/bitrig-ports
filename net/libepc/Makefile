# $OpenBSD: Makefile,v 1.13 2015/03/16 18:07:52 naddy Exp $

COMMENT=		Easy Publish and Consume library

GNOME_PROJECT=		libepc
GNOME_VERSION=		0.4.4
REVISION=		5
SHARED_LIBS +=  epc-1.0              0.0      # 3.0
SHARED_LIBS +=  epc-ui-1.0           0.0      # 3.0
CATEGORIES=		net

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 avahi-client
WANTLIB += avahi-common avahi-glib cairo cairo-gobject dbus-1
WANTLIB += drm uuid expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gmp gnutls gobject-2.0
WANTLIB += gthread-2.0 gtk-3 hogweed m nettle p11-kit pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs soup-2.4 tasn1 xcb xcb-render
WANTLIB += xcb-shm xml2 z
WANTLIB += c++ c++abi

MODULES=		devel/gettext \
			x11/gnome

# Only needed for examples.
BUILD_DEPENDS=		net/avahi,-gtk3,no_mono,no_qt3,no_qt4
LIB_DEPENDS=		devel/libsoup \
			net/avahi \
			sysutils/e2fsprogs>=1.42.7 \
			x11/gtk+3

CONFIGURE_STYLE=	gnu

# Not much of use without a proper SIOCGIFINDEX
NO_TEST=		Yes

.include <bsd.port.mk>
