FROM nginx
COPY html /usr/share/nginx/html
ARG GIT_HASH
RUN echo GIT_HASH is ${GIT_HASH}
RUN sed -i s/XXX/${GIT_HASH}/ /usr/share/nginx/html/index.html
