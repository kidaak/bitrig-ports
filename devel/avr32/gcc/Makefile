# $OpenBSD: Makefile,v 1.2 2015/01/25 23:22:46 naddy Exp $

COMMENT = 	Atmel AVR 32-bit gcc
V = 		4.4.7
DISTNAME = 	avr32-gcc-${V}
REVISION = 	0

# GPLv3
PERMIT_PACKAGE_CDROM = 	Yes

WANTLIB = 		c gmp mpfr
DIST_SUBDIR = 		gcc
AUTOCONF_VERSION = 	2.59
CONFIGURE_ARGS = 	--disable-libssp \
			--disable-threads \
			--disable-libstdcxx-pch \
			--with-gmp=${LOCALBASE} \
			--with-mpfr-lib=${LOCALBASE} \
			--with-mpfr-include=${LOCALBASE} \
			--enable-languages=c,c++ \
			--enable-__cxa_atexit \
			--with-dwarf2 \
			--enable-version-specific-runtime-libs \
			--with-newlib
MAKE_ENV =		lt_cv_path_SED=/usr/bin/sed
WRKDIST = 		${WRKDIR}/gcc-${V}
BUILD_DEPENDS = 	devel/avr32/binutils \
			devel/avr32/newlib
RUN_DEPENDS = 		devel/avr32/binutils \
			devel/avr32/newlib \
			devel/avr32/headers
LIB_DEPENDS = 		devel/gmp \
			devel/mpfr

SEPARATE_BUILD =	Yes


# This file confuses 'make update-patches'
post-extract:
	rm ${WRKSRC}/gcc/config/avr32/avr32.c.orig

# Fix configure scripts missing configure.in patches
pre-configure:
	cd ${WRKSRC}/gcc; ${SETENV} ${AUTOCONF_ENV} ${AUTOCONF}

post-install:
	chown -R ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/lib/gcc/avr32/${V}/include*

.include <bsd.port.mk>
