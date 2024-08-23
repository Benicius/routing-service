package com.bdsystems.airport.routing_service.services;

import org.apache.kafka.clients.consumer.ConsumerRecord;

public interface KafkaConsumer<K, V> {

		void onMessage(ConsumerRecord<K, V> data);

}
