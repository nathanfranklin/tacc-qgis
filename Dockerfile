# Image: nathanfranklin/tacc-qgis
# Version: 0.0.1

FROM gzynda/tacc-base:latest

RUN echo 'deb http://qgis.org/ubuntu-ltr xenial main' >> /etc/apt/sources.list
RUN echo 'deb-src http://qgis.org/ubuntu-ltr xenial main' >> /etc/apt/sources.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-key CAEB3DC3BDF7FB45
RUN apt-get update && apt-get install -y qgis python-qgis qgis-plugin-grass
