FROM alpine:3.6

RUN git clone -b docker https://${GITHUB_TOKEN}:x-oauth-basic@github.com/${GITHUB_GIT} /myapp/
RUN cp -R /myapp/* /home/app/
RUN chown app:app -R /home/app/