# $OpenBSD: Makefile,v 1.30 2015/01/29 07:02:24 ajacoutot Exp $

SHARED_ONLY =	Yes

COMMENT =	GLib ICE implementation

DISTNAME =	libnice-0.1.10

SHARED_LIBS +=  nice                 2.3      # 15.1

CATEGORIES =	net

HOMEPAGE =	http://nice.freedesktop.org/

# LGPLv2.1/MPLv1.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gssdp-1.0
WANTLIB += gstbase-1.0 gstreamer-1.0 gthread-2.0 gupnp-1.0 gupnp-igd-1.0
WANTLIB += lzma m pcre pthread soup-2.4 sqlite3 uuid xml2 z

MASTER_SITES =		http://nice.freedesktop.org/releases/

MODULES =		devel/gettext

BUILD_DEPENDS =		devel/gobject-introspection

LIB_DEPENDS =		multimedia/gstreamer1/core \
			net/gupnp/igd

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS = 	${CONFIGURE_SHARED} \
			--with-gstreamer \
			--without-gstreamer-0.10

USE_GMAKE =		Yes

# configure sets -Werror
CFLAGS +=		-Wno-error

post-install:
	rm ${PREFIX}/lib/gstreamer-1.0/*.{a,la}
# don't install example binaries
	rm ${PREFIX}/bin/*-example

.include <bsd.port.mk>
