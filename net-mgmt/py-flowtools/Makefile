# Created by: Roman Bogorodskiy <bogorodskiy@inbox.ru>
# $FreeBSD$

PORTNAME=	flowtools
PORTVERSION=	0.3.4.1
PORTREVISION=	1
CATEGORIES=	net-mgmt python
MASTER_SITES=	GOOGLE_CODE
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	pyflowtools-${PORTVERSION}

MAINTAINER=	novel@FreeBSD.org
COMMENT=	Python extension module for reading flow-tools' data

BROKEN=		Unfetchable (google code has gone away)
DEPRECATED=	Unfetchable for more than six months (google code has gone away)
EXPIRATION_DATE=	2017-04-30

BUILD_DEPENDS=	${LOCALBASE}/include/ftlib.h:net-mgmt/flow-tools

LICENSE=	GPLv2
LICENSE_FILE=	${WRKSRC}/COPYING

CFLAGS+=	-I${LOCALBASE}/include -L${LOCALBASE}/lib
USES=		python
USE_PYTHON=	distutils autoplist

PROJECTHOST=	py${PORTNAME}

.include <bsd.port.mk>
