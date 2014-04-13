FROM mwcampbell/muslbase-runtime
MAINTAINER Matt Campbell <mattcampbell@pobox.com>
ADD runtime.tar /
RUN echo 'postgres:x:100:' >> /etc/group && \
    echo 'postgres:x:100:100:postgres:/data/db:/bin/sh' >> /etc/passwd
VOLUME ["/data"]
EXPOSE 5432
CMD ["/bin/run"]
