FROM registry.fedoraproject.org/fedora

MAINTAINER Ricardo Robaina <rprobaina@gmail.com>

ENV GIT_REPO=https://github.com/rprobaina/helloworld-server.git
ENV SERVER_HOME=/helloworld-server

RUN yum install -y golang \
	&& yum clean all -y \
	&& git clone ${GIT_REPO}

WORKDIR ${SERVER_HOME}

ENTRYPOINT ["go"]

CMD ["run", "server.go"]
