FROM node:9
LABEL maintainer="Ivan Turkovic <ivan.turkovic@gmail.com>"
LABEL description="Basic Docker image with Node and AWS CLI"

USER root
RUN mkdir -p /dir
ADD dependencies.sh /dir/
WORKDIR /dir
# RUN apt-get install apt-utils
RUN chmod +x ./dependencies.sh
RUN ./dependencies.sh

USER node

CMD /bin/bash
