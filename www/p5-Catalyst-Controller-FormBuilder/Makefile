# $OpenBSD: Makefile,v 1.11 2015/01/21 14:42:32 sthen Exp $

COMMENT=	Catalyst FormBuilder Base Controller

MODULES=	cpan
DISTNAME=	Catalyst-Controller-FormBuilder-0.06
REVISION=	0
CATEGORIES=	www

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-MRO-Compat \
		devel/p5-Test-WWW-Mechanize-Catalyst \
		devel/p5-Tie-IxHash \
		www/p5-CGI-FormBuilder \
		www/p5-Catalyst-Runtime \
		devel/p5-Class-Data-Inheritable>=0.04 \
		devel/p5-Class-Inspector>=1.13

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
