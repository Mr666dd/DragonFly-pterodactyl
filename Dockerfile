FROM docker.dragonflydb.io/dragonflydb/dragonfly

ENV  USER=container HOME=/home/container

WORKDIR /srv
COPY ./entrypoint.sh /srv
RUN chmod 77 /srv/entrypoint.sh
ENTRYPOINT [ "/srv/entrypoint.sh" ]
CMD ["/bin/bash", "/srv/entrypoint.sh"]
