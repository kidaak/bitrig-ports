# $OpenBSD: Makefile,v 1.13 2014/12/03 08:32:28 dcoppa Exp $

COMMENT =		fast NTLM/NTLMv2 authenticating HTTP proxy
DISTNAME =		cntlm-0.93beta5
REVISION =		0
CATEGORIES =		www
HOMEPAGE =		http://awk.cz/cntlm/

# GPLv2+
PERMIT_PACKAGE_CDROM =  Yes

WANTLIB =		c pthread

MASTER_SITES =		http://ftp.awk.cz/pub/

MAKE_FLAGS =		CC="${CC}" SYSCONFDIR="${SYSCONFDIR}/cntlm"

CONFIGURE_STYLE =	simple
ALL_TARGET =		cntlm
USE_GMAKE =		Yes

NO_TEST =		Yes

post-patch:
	cp ${WRKSRC}/Makefile ${WRKSRC}/Makefile.clang

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/cntlm
	${INSTALL_PROGRAM} ${WRKBUILD}/cntlm ${PREFIX}/sbin/
	${INSTALL_MAN} ${WRKSRC}/doc/cntlm.1 ${PREFIX}/man/man1/
	${INSTALL_DATA} ${WRKSRC}/doc/cntlm.conf ${PREFIX}/share/examples/cntlm/

.include <bsd.port.mk>
