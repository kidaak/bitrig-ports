# $OpenBSD: Makefile,v 1.97 2015/01/28 15:13:51 sthen Exp $

COMMENT=		virus scanner
DISTNAME=		clamav-0.98.6

CATEGORIES=		security

SHARED_LIBS +=	clamav               22.1     # 7.25
SHARED_LIBS +=	clamunrar            3.0      # 7.25
SHARED_LIBS +=	clamunrar_iface      3.0

HOMEPAGE=		http://www.clamav.net/

# GPLv2/LGPL, with OpenSSL exemption
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += bz2 c crypto curl idn ltdl lzma m milter ncurses
WANTLIB += pthread ssl xml2 z

BUILD_DEPENDS=		devel/check \
			devel/libexecinfo

LIB_DEPENDS=		archivers/bzip2 \
			devel/libtool,-ltdl \
			mail/sendmail,-libmilter \
			net/curl \
			textproc/libxml

RUN_DEPENDS=		archivers/lha \
			archivers/arc \
			archivers/unzip

### XXX clamav relies on libmilter, which is not part of base
#
BUILD_DEPENDS+=		mail/sendmail
RUN_DEPENDS+=		mail/sendmail

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=clamav/}

CONFIGURE_STYLE=        gnu
CONFIGURE_ARGS+=        ${CONFIGURE_SHARED}
CONFIGURE_ARGS+=        --disable-clamav \
			--enable-dependency-tracking \
			--disable-clamuko \
			--enable-bigstack \
			--enable-milter \
			--with-user=_clamav \
			--with-group=_clamav \
                        --disable-cr \
			--with-dbdir=/var/db/clamav \
			--with-ltdl-include=${LOCALBASE}/include \
			--with-ltdl-lib=${LOCALBASE}/lib

MODGNU_CONFIG_GUESS_DIRS=	${WRKDIST}/config

TEST_TARGET=	check
MODULES=	lang/python devel/gettext
MODPY_RUNDEP=	no

CPPFLAGS+=	-I/usr/include -I${LOCALBASE}/include
LDFLAGS+=	-pthread -L/usr/lib \
		-L${LOCALBASE}/lib
CONFIGURE_ENV+=	LDFLAGS="${LDFLAGS}" \
		CPPFLAGS="${CPPFLAGS}"
FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/clamav

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mllvm}
BUILD_DEPENDS+=		devel/llvm

pre-configure:
	rm -rf ${WRKSRC}/libclamav/c++/llvm
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/clamav \
		${PREFIX}/share/examples/clamav
	cd ${WRKSRC}/docs; ${INSTALL_DATA} *.pdf ${PREFIX}/share/doc/clamav
	cd ${WRKSRC}/examples; ${INSTALL_DATA} ex1.c \
		${PREFIX}/share/examples/clamav

pre-test:
	-ln -s ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
