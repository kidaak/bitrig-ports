# $OpenBSD: Makefile,v 1.31 2015/03/17 16:16:50 dcoppa Exp $

BROKEN = 		needs work on bitrig

COMMENT =		ncurses mpd client inspired by ncmpc
BROKEN-alpha =		error: looser throw specifier for 'virtual OutOfBounds::~OutOfBounds()
BROKEN-hppa =		bindings.h:85:4: error: type 'Binding' is not a direct base of 'Binding'

DISTNAME =		ncmpcpp-0.6.3

EXTRACT_SUFX =		.tar.bz2

CATEGORIES =		audio

HOMEPAGE =		http://ncmpcpp.rybczak.net/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}stable/

WANTLIB =		boost_filesystem-mt boost_locale-mt \
			boost_program_options-mt boost_regex-mt \
			boost_system-mt boost_thread-mt c crypto \
			curl idn m mpdclient ncursesw pthread \
			readline ssl tag z
WANTLIB +=		c++ c++abi

LIB_DEPENDS =		audio/libmpdclient>=2.4 \
			audio/taglib \
			devel/boost \
			net/curl

MODULES =		devel/gettext gcc4

MODGCC4_ARCHS =		i386 amd64 powerpc sparc64 alpha hppa
MODGCC4_LANGS =		c++

FAKE_FLAGS =		docdir="${PREFIX}/share/examples/ncmpcpp/"

CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS =	--enable-clock \
			--enable-outputs \
			--enable-unicode \
			--with-curl \
			--with-taglib \
			--without-fftw

CONFIGURE_ENV =		CPPFLAGS="-pthread"

NO_TEST =		Yes

.include <bsd.port.mk>
