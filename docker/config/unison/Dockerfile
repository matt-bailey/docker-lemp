FROM leighmcculloch/unison

ARG webrootdir
ARG projectdir

ENV UNISON_VERSION=2.48.3
ENV UNISON_WORKING_DIR=$projectdir

# this is for the other images before running unison sync
RUN mkdir -p $webrootdir
