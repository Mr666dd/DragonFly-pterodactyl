FROM docker.dragonflydb.io/dragonflydb/dragonfly

ENV  USER=container HOME=/home/container

WORKDIR /home/container
COPY ./entrypoint.sh /srv
RUN chmod 774 /srv/entrypoint.sh
ENTRYPOINT [ "/srv/entrypoint.sh" ]
CMD ["/bin/bash", "/srv/entrypoint.sh"]
