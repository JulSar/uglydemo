export PYTHONPATH=.:./libs/:./appsrc/:./pyutils
export BUCKETEER_AWS_ACCESS_KEY_ID=`heroku config:get BUCKETEER_AWS_ACCESS_KEY_ID`
export BUCKETEER_AWS_REGION=`heroku config:get BUCKETEER_AWS_REGION`
export BUCKETEER_AWS_SECRET_ACCESS_KEY=`heroku config:get BUCKETEER_AWS_SECRET_ACCESS_KEY`
export BUCKETEER_BUCKET_NAME=`heroku config:get BUCKETEER_BUCKET_NAME`
export CLOUDINARY_URL=`heroku config:get CLOUDINARY_URL`
export DATABASE_URL=`heroku config:get DATABASE_URL`
export KAFKA_CLIENT_CERT=`heroku config:get KAFKA_CLIENT_CERT`
export KAFKA_CLIENT_CERT_KEY=`heroku config:get KAFKA_CLIENT_CERT_KEY`
export KAFKA_PREFIX=`heroku config:get KAFKA_PREFIX`
export KAFKA_TRUSTED_CERT=`heroku config:get KAFKA_TRUSTED_CERT`
export KAFKA_URL=`heroku config:get KAFKA_URL`
export LOGDNA_KEY=`heroku config:get LOGDNA_KEY`
export NEW_RELIC_APP_NAME=`heroku config:get NEW_RELIC_APP_NAME`
export NEW_RELIC_CONFIG_FILE=`heroku config:get NEW_RELIC_CONFIG_FILE`
export NEW_RELIC_LICENSE_KEY=`heroku config:get NEW_RELIC_LICENSE_KEY`
export NEW_RELIC_LOG=`heroku config:get NEW_RELIC_LOG`
export NEW_RELIC_LOG_LEVEL=`heroku config:get NEW_RELIC_LOG_LEVEL`
export REDIS_URL=`heroku config:get REDIS_URL`
export STAGING_DATABASE_URL=`heroku config:get STAGING_DATABASE_URL`
export CLOUDAMQP_APIKEY=`heroku config:get CLOUDAMQP_APIKEY`
export CLOUDAMQP_URL=`heroku config:get CLOUDAMQP_URL`
export FOLLOWANALYTICS_API_KEY=`heroku config:get FOLLOWANALYTICS_API_KEY`
export FOLLOWANALYTICS_API_TOKEN=`heroku config:get FOLLOWANALYTICS_API_TOKEN`
export FOLLOWANALYTICS_SOR_IDENTIFIER=`heroku config:get FOLLOWANALYTICS_SOR_IDENTIFIER`
export PUSHER_SOCKET_URL=`heroku config:get PUSHER_SOCKET_URL`
export PUSHER_URL=`heroku config:get PUSHER_URL`