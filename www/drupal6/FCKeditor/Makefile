# $OpenBSD: Makefile,v 1.13 2012/03/18 16:16:24 sthen Exp $

COMMENT =	FCKeditor for drupal

DISTNAME =	fckeditor-6.x-2.3
PKGNAME =	drupal6-fckeditor-2.3
REVISION =	0
DISTFILES =	${DISTNAME}.tar.gz \
		FCKeditor_2.6.6.tar.gz:0
EXTRACT_ONLY =	${DISTNAME}.tar.gz

MASTER_SITES0 =	${MASTER_SITE_SOURCEFORGE:=fckeditor/}

post-extract:
	cd ${WRKDIST} && tar zxf ${FULLDISTDIR}/FCKeditor_2.6.6.tar.gz
	chmod -R u+wX ${WRKDIST}/fckeditor

post-install:
	mv ${PREFIX}/${DRUPAL_MODS}/fckeditor/fckeditor/editor/filemanager/connectors/php/config.php \
	   ${PREFIX}/${DRUPAL_MODS}/fckeditor/fckeditor/editor/filemanager/connectors/php/default.config.php

.include <bsd.port.mk>
