# $OpenBSD: Makefile,v 1.2 2015/01/26 18:00:21 benoit Exp $

COMMENT =		require logged-in user for specified routes

MODULES =		cpan
DISTNAME =		Dancer2-Plugin-Auth-Tiny-0.005
CATEGORIES =		www

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		www/p5-Dancer2>=0.154000

TEST_DEPENDS =		www/p5-HTTP-Cookies \
			www/p5-HTTP-Message \
			www/p5-Plack
 
.include <bsd.port.mk>
