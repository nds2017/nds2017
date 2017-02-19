#!/bin/bash
# RSYNC.SH CODDEPLOY
rsync -avz --delete-after --exclude-from=/tmp/deploy-current/scripts/deploy.exclude /tmp/deploy-current/* /var/www/nds2018/
chmod -R 775 /var/www/nds2018
chown -R www-data:www-data /var/www/html/nds2018
#cd /dataweb/libero/3.libero.pe
#aws s3 sync --profile default --region us-east-1  /dataweb/libero/3.libero.pe/public/ s3://libero-media/public/
#composer update
