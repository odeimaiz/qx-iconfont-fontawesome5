FROM node:10

LABEL maintainer="oetiker" \
      description="Qooxdoo Font Awesome 5 Icon Font"

# reuses user defined in base image
USER node

# qooxdoo versioning

# access to bin
ENV PATH=/home/node/node_modules/.bin:$PATH

COPY --chown=node:node package.json /home/node/
RUN cd /home/node && npm install

WORKDIR /home/node/src
VOLUME  /home/node/src
EXPOSE 31754

ENTRYPOINT [ "qx" ]
