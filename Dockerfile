# Image: nathanfranklin/tacc-qgis
# Version: 0.0.2

# Use ubuntu 19.04
FROM ubuntu:disco

RUN apt-get update && apt-get install -y gnupg2

RUN echo 'deb http://qgis.org/ubuntu disco main' >> /etc/apt/sources.list
RUN echo 'deb-src http://qgis.org/ubuntu disco main' >> /etc/apt/sources.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-key CAEB3DC3BDF7FB45
RUN apt-get update && apt-get install -y qgis python-qgis qgis-plugin-grass

########################################
# Add mount points
########################################

RUN mkdir /scratch /work /home1 /gpfs /corral-repl /corral-tacc /data
