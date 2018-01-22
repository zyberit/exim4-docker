FROM tianon/exim4

ENV DOMAIN example.org

# COPY entrypoint.sh /usr/local/bin/

COPY conf.d/* /etc/exim4/conf.d/

CMD ["tini", "--", "exim", "-bdf", "-v", "-q30m"]