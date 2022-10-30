#!/bin/sh
if [ ! -f UUID ]; then
  UUID="4848fcf9-bb0d-4a5a-978b-4074b36c729b"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

