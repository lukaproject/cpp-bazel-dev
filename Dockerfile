FROM ubuntu:22.04
LABEL MAINTAINER=dxyinme@outlook.com

COPY src/setup /setup
RUN /setup/install.sh


CMD [ "/bin/bash" ]