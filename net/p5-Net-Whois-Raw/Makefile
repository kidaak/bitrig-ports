# $OpenBSD: Makefile,v 1.30 2015/02/06 15:12:35 giovanni Exp $

COMMENT=	extension for unparsed raw whois information

DISTNAME =	Net-Whois-Raw-2.82
CATEGORIES=	net

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		cpan

CONFIGURE_STYLE=	modbuild

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		converters/p5-Net-IDN-Encode \
			devel/p5-Regexp-IPv6 \
			www/p5-libwww

.include <bsd.port.mk>
