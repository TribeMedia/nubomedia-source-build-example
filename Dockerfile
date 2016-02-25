FROM nubomedia/apps-baseimage:v1

MAINTAINER Nubomedia

ADD nubomedia-media-test/ /tmp/nubomedia-media-test
RUN cd /tmp/nubomedia-media-test && mvn compile

ENTRYPOINT cd /tmp/nubomedia-media-test && mvn exec:java
