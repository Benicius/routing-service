package com.bdsystems.airport.routing_service.services;

import com.bdsystems.airport.routing_service.domains.FlightMo;
import org.apache.kafka.clients.consumer.ConsumerRecord;
import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.stereotype.Component;

@Component
public class AsyncConsumer implements KafkaConsumer<String, FlightMo> {

	@KafkaListener(topics = "com.bdsystems.airport.check-in")
	public void processMessage(@Payload String message){
		System.out.println(message);
	}

	@Override
	@KafkaListener(topics = "com.bdsystems.airport.check-in")
	public void onMessage(ConsumerRecord<String, FlightMo> data) {
		System.out.println(data.value());
	}
}
