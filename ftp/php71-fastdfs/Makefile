# $FreeBSD$

PORTNAME=	fastdfs
PORTVERSION=	5.0.9
CATEGORIES=	ftp
PKGNAMEPREFIX=	php71-

MAINTAINER=	daniel@blodan.se
COMMENT=	PHP 7.1 module for accessing a FastDFS cluster

LICENSE=	GPLv3

LIB_DEPENDS=	libfastcommon.so:devel/libfastcommon \
		libfdfsclient.so:ftp/fastdfs

USE_GITHUB=	yes
GH_ACCOUNT=	happyfish100
GH_PROJECT=	fastdfs
GH_TAGNAME=	5d0d1ef

USES=			php:ext
IGNORE_WITH_PHP=	56 70
PHP_VER=		71

WRKSRC_SUBDIR=	php_client

PHP_MODNAME=	fastdfs_client

.include <bsd.port.mk>
