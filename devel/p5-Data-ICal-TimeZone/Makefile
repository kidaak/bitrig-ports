# $OpenBSD: Makefile,v 1.6 2015/01/21 14:27:56 sthen Exp $

COMMENT =	timezones module for Data::ICal

DISTNAME =	Data-ICal-TimeZone-1.23
REVISION =	1

CATEGORIES =	devel

MODULES =	cpan

# Perl
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/p5-Data-ICal \
		devel/p5-Class-Accessor \
		devel/p5-Class-Singleton \
		devel/p5-Class-ReturnValue \
		devel/p5-Universal-require

post-extract:
	@rm -f ${WRKDIST}/lib/Data/ICal/._*  \
		${WRKDIST}/lib/Data/ICal/TimeZone/._*

.include <bsd.port.mk>
