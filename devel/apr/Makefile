# $OpenBSD: Makefile,v 1.36 2015/01/18 21:27:08 claudio Exp $

COMMENT=	Apache Portable Runtime

V=		1.5.0
REVISION=	1
DISTNAME=	apr-$V
SHARED_LIBS +=	apr-1             5.0     # .5.0

CATEGORIES=	devel

HOMEPAGE=	http://apr.apache.org/

# Apache License 2.0
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += pthread

MASTER_SITES=	${MASTER_SITE_APACHE:=apr/}

CONFIGURE_STYLE=gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC} ${WRKSRC}/build
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		${CONFIGURE_SHARED:S/-shared/-dso/} \
		--includedir=${LOCALBASE}/include/apr-1/ \
		--with-installbuilddir=${LOCALBASE}/lib/apr-1/ \
		--enable-other-child \
		--enable-threads \
		--enable-pool-debug=yes \
		ac_cv_prog_AWK=awk

pre-install:
	rm -f ${WRKSRC}/libtool

.include <bsd.port.mk>
