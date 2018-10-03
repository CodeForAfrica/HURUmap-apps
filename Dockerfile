FROM codeforafrica/hurumap-base:0.1.0
ENV DEBIAN_FRONTEND noninteractive

MAINTAINER Code for Africa

# Set env variables used in this Dockerfile
# Local directory with project source

ARG HURUMAP_NAME=${HURUMAP_APP_NAME}

ENV HURUMAP_APP_SRC=.
# Directory in container for all project files
ENV HURUMAP_APP_SRVHOME=/src
# Directory in container for project source files
ENV HURUMAP_APP_SRVPROJ=/src/$HURUMAP_NAME

# Create application subdirectories
WORKDIR $HURUMAP_APP_SRVHOME
RUN mkdir media static logs
VOLUME ["$HURUMAP_APP_SRVHOME/media/", "$HURUMAP_APP_SRVHOME/logs/"]

# Install Python dependencies
COPY ./requirements.txt /
RUN pip install -q -U pip setuptools
RUN pip install -q -r /requirements.txt

# GDAL pains
RUN pip install -q GDAL==2.1.3 --global-option=build_ext --global-option="-I/usr/include/gdal"
RUN pip install -q "Shapely>=1.5.13"

# Add application source code to SRCDIR
ADD $HURUMAP_APP_SRC $HURUMAP_APP_SRVPROJ

# Server
EXPOSE 8000


# Copy entrypoint script into the image
WORKDIR $HURUMAP_APP_SRVPROJ
COPY ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD [$HURUMAP_NAME]
