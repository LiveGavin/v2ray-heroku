cd /vbin
wget -O one.zip http://github.com/v2ray/v2ray-core/releases/download/v$VER/v2ray-linux-64.zip
unzip one.zip 
mv /vbin/v2ray-v$VER-linux-64/* .

mv v2ray one
chmod +x one
chmod +x v2ctl

echo -e -n "$CONFIG_JSON1" > config.json
echo -e -n "$PORT" >> config.json
echo -e -n "$CONFIG_JSON2" >> config.json
echo -e -n "$UUID" >> config.json
echo -e -n "$CONFIG_JSON3" >> config.json

./one
