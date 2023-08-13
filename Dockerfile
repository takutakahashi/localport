FROM nginx:stable

COPY entrypoint.sh /
COPY localport.conf /
ENTRYPOINT ["/entrypoint.sh"]
