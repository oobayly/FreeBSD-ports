# Created by: Daniel Roethlisberger <daniel@roe.ch>
# $FreeBSD$

PORTNAME=	sinatra
PORTVERSION=	1.4.8
CATEGORIES=	www rubygems
MASTER_SITES=	RG

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	Classy web development framework in ruby

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	rubygem-rack16>=1.5:www/rubygem-rack16 \
		rubygem-rack-protection>=1.4:www/rubygem-rack-protection \
		rubygem-tilt>=1.3:devel/rubygem-tilt

NO_ARCH=	yes
USE_RUBY=	yes
USES=		gem

.include <bsd.port.mk>
