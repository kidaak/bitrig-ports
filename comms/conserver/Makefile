# $OpenBSD: Makefile,v 1.50 2014/10/07 22:14:17 sthen Exp $

COMMENT=	manage remote serial consoles via TCP/IP

DISTNAME=	conserver-8.2.0
CATEGORIES=	comms

HOMEPAGE=	http://www.conserver.com/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c util

FLAVORS=	net
FLAVOR?=

MASTER_SITES=	${HOMEPAGE} \
		ftp://ftp.conserver.com/conserver/

AUTOCONF_VERSION= 2.68
CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS=	--with-master=localhost \
		--with-pidfile=${LOCALSTATEDIR}/run/conserver/conserver.pid

.if ${FLAVOR:Mnet}
# not yet using experimental IPv6 support added in 8.2.0; investigate
# implications of ifdef'ing out ProbeInterfaces in cutil.c before enabling
WANTLIB += crypto ssl
CONFIGURE_ARGS+= --with-openssl \
		--with-port=3109
.else
CONFIGURE_ARGS+= --with-uds=${LOCALSTATEDIR}/run/conserver \
		--with-trust-uds-cred
.endif

post-install:
	${INSTALL_DATA} ${WRKSRC}/conserver.cf/samples/* \
	    ${FILESDIR}/console.cf ${PREFIX}/share/examples/conserver/

TEST_TARGET=	test

.include <bsd.port.mk>
