# $OpenBSD: Makefile,v 1.1.1.1 2014/10/30 13:45:31 espie Exp $

COMMENT =	dump raw jpeg exif information
CATEGORIES =	graphics devel

MASTER_SITES =	https://svn.xiph.org/experimental/giles/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

V =		1.0
DISTFILES =	jpegdump.c
DIST_SUBDIR =	jpegdump-$V
DISTNAME =	jpegdump-$V
EXTRACT_CASES = *.c) ln -s ${FULLDISTDIR}/$$archive ${WRKDIR};;

WRKDIST =	${WRKDIR}

do-build:
	cd ${WRKBUILD} && ${CC} ${CFLAGS} -o jpegdump jpegdump.c

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/jpegdump ${PREFIX}/bin

.include <bsd.port.mk>
