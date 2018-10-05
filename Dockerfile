FROM codeforafrica/hurumap-base:0.1.0
ENV DEBIAN_FRONTEND noninteractive

# Set env variables used in this Dockerfile
# Local directory with project source

ENV APP_SRC=.
# Directory in container for all project files
ENV APP_SRVHOME=/src
# Directory in container for project source files
ENV APP_SRVPROJ=/src/hurumap

# Create application subdirectories
WORKDIR $APP_SRVHOME
RUN mkdir media static logs
VOLUME ["$APP_SRVHOME/media/", "$APP_SRVHOME/logs/"]

# Install Python dependencies
COPY ./requirements.txt /
RUN pip install -q -U pip setuptools
RUN pip install -q -r /requirements.txt

# GDAL Installs
# TODO: Remove after mapit installation
RUN pip install -q GDAL==2.1.3 --global-option=build_ext --global-option="-I/usr/include/gdal"
RUN pip install -q "Shapely>=1.5.13"

# Add application source code to SRCDIR
ADD $APP_SRC $APP_SRVPROJ

# Server
EXPOSE 8000


# Copy entrypoint script into the image
WORKDIR $APP_SRVPROJ
COPY ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
