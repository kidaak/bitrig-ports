# $OpenBSD: Makefile,v 1.17 2014/11/02 10:58:32 sthen Exp $

SHARED_LIBS +=  scamperfile               0.1 # 0.0

COMMENT =	parallel internet measurement utility

V =		20141101
DISTNAME =	scamper-cvs-$V
PKGNAME =	scamper-0.0.$V
REVISION =	0

CATEGORIES =	net benchmarks

HOMEPAGE =	http://www.caida.org/tools/measurement/scamper/

# GPLv2 only
PERMIT_PACKAGE_CDROM =	 Yes

WANTLIB += c m

MASTER_SITES =	http://www.caida.org/tools/measurement/scamper/code/

USE_GROFF =		Yes
SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-privsep-user=_scamper

post-install:
.for i in trace ping tracelb dealias sting neighbourdisc tbit sniff
	ln ${PREFIX}/bin/scamper ${PREFIX}/bin/scamper-$i
.endfor

.include <bsd.port.mk>
