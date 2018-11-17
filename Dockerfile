FROM codeforafrica/hurumap:0.0.2
ENV DEBIAN_FRONTEND noninteractive

# Set env variables used in this Dockerfile
# Local directory with project source

ENV APP_SRC=.
# Directory in container for all project files
ENV APP_SRVHOME=/src
# Directory in container for project source files
ENV APP_SRVPROJ=/src/hurumap-apps

# Add application source code to SRCDIR
ADD $APP_SRC $APP_SRVPROJ

# Copy entrypoint script into the image
WORKDIR $APP_SRVPROJ
COPY ./docker-entrypoint.sh /

RUN pip install -q -r requirements.txt
