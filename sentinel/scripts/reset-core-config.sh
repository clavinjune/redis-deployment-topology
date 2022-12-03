#! /bin/sh

CONFIG_DIR="config"
REPLICA_CONFIG_DIR="midgard-replica"
NUM_OF_REPLICAS="2"

for i in $(ls "$CONFIG_DIR" | grep -v "$REPLICA_CONFIG_DIR"); do
    cp "$CONFIG_DIR/$i/core.conf" "$CONFIG_DIR/$i/redis.conf"
done

for i in $(seq "$NUM_OF_REPLICAS"); do
    cp "$CONFIG_DIR/$REPLICA_CONFIG_DIR/core.conf" "$CONFIG_DIR/$REPLICA_CONFIG_DIR/r${i}.conf"
done