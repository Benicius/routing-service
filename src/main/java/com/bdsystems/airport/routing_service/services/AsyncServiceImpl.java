package com.bdsystems.airport.routing_service.services;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.stereotype.Component;

@Component
public class AsyncServiceImpl {

	@Value( "${spring.kafka.topic}")
	private String topic;

	@KafkaListener(topics = "NewTopic")
	public void consume(String message) {
		System.out.println("message: " + message);
	}
}
