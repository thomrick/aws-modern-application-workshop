BUCKET_NAME="mythicalmysfits-webserver-z0eq6hhoxlre"

aws s3 cp ./src/web/index.html s3://$BUCKET_NAME/index.html