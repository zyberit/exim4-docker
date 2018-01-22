FROM tianon/exim4

ENV DOMAIN example.org

# COPY entrypoint.sh /usr/local/bin/

COPY conf.d/main/* /etc/exim4/conf.d/main/
COPY conf.d/router/* /etc/exim4/conf.d/router/

CMD ["tini", "--", "exim", "-bdf", "-v", "-q30m"]