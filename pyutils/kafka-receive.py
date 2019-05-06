"""
from libs import kafka_utils
kafka_utils.receiveFromKafka("subscribe")
"""
from kafka import KafkaProducer,KafkaConsumer
from kafka.errors import KafkaError
#Consumer, KafkaError, Producer
from libs import kafka_utils
import ujson 
import datetime, os

print(kafka_utils.KAFKA_URL)

KAFKA_PREFIX=  os.getenv('KAFKA_PREFIX', '')
KAFKA_TOPIC_READ= os.getenv('KAFKA_TOPIC_READ', "topicRead") #"salesforce.syncaccount__e"
KAFKA_TOPIC_WRITE= os.getenv('KAFKA_TOPIC_WRITE', "topicWrite") #"ple2"


#KAFKA_TOPIC = "kanawha-42002.topicRead"
KAFKA_TOPIC =  KAFKA_PREFIX + KAFKA_TOPIC_READ
print(KAFKA_TOPIC)
def consumer():
    consumer = KafkaConsumer(KAFKA_TOPIC,
                #group_id=kafka_utils.KAFKA_GROUP_ID,
                bootstrap_servers =kafka_utils.KAFKA_URL.replace('kafka+ssl://','').split(','),
                security_protocol ='SSL',
                ssl_check_hostname=False,
                ssl_cafile ='static/kafka_ca',
                ssl_certfile ='static/kafka_client_cert',
                ssl_keyfile= 'static/kafka_client_key',
                auto_offset_reset="smallest",
                max_poll_records=500,
                enable_auto_commit=True,
                auto_commit_interval_ms=10,
                partition_assignment_strategy='RangePartitionAssignor'
                #api_version = (0,9)
                )

    consumer.subscribe(KAFKA_TOPIC)

    for message in consumer:
        # message value and key are raw bytes -- decode if necessary!
        # e.g., for unicode: `message.value.decode('utf-8')`
        print ("%s:%d:%d: key=%s value=%s" % (message.topic, message.partition,
                                          message.offset, message.key,
                                          message.value))

def acked(err, msg):
    if err is not None:
        print("Failed to deliver message: {0}: {1}"
              .format(msg.value(), err.str()))
    else:
        print("Message produced: {0}".format(msg.value()))

#kafka_utils.receiveFromKafka("assign")


consumer()

