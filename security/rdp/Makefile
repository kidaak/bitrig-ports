# $OpenBSD: Makefile,v 1.25 2013/03/11 11:41:28 espie Exp $

COMMENT=	ICMP router discovery protocol spoofer

DISTNAME=	rdp
PKGNAME=	rdp-1.0
REVISION =	1
CATEGORIES=	security
MASTER_SITES=	http://www.atstake.com/research/tools/

LIB_DEPENDS=	net/libnet/1.0

PERMIT_PACKAGE_CDROM=	no license
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		c pcap lib/libnet-1.0/net=0

WRKDIST=	${WRKDIR}

do-build:
	cd ${WRKSRC} && ${CC} ${CFLAGS} -I${PREFIX}/include/libnet-1.0 -o rdp \
		icmp_rdp.c -L${PREFIX}/lib/libnet-1.0 -lnet -lpcap

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/rdp ${PREFIX}/sbin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rdp
	${INSTALL_DATA} ${WRKSRC}/rdp.advisory ${PREFIX}/share/doc/rdp

.include <bsd.port.mk>
