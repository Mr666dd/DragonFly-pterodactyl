FROM docker.dragonflydb.io/dragonflydb/dragonfly

ENV  USER=container HOME=/home/container

WORKDIR /home/container
COPY ./entrypoint.sh /home/container/
RUN chmod 774 ./entrypoint.sh
ENTRYPOINT [ "./entrypoint.sh" ]
CMD ["/bin/bash", "/entrypoint.sh"]