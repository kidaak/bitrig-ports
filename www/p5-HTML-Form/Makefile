# $OpenBSD: Makefile,v 1.1.1.1 2014/10/23 19:23:32 nigel Exp $

COMMENT =	Class that represents an HTML form element

DISTNAME =	HTML-Form-6.03
CATEGORIES =	www
CPAN_AUTHOR =	GAAS

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan

RUN_DEPENDS =	www/p5-HTML-Parser \
		www/p5-HTTP-Message>=6.03 \
		www/p5-URI>=1.10

BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
