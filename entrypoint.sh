#!/bin/sh
export ENTRYPOINT_ESCAPED=`echo $ENTRYPOINT_HOST|sed 's/\./\\\./g'`
cat localport.conf |envsubst '$$ENTRYPOINT_ESCAPED'| envsubst '$$PROXY_TARGET_HOST' > /etc/nginx/conf.d/default.conf
nginx -g 'daemon off;'
