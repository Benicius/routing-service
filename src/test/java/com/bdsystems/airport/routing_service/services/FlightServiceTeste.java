package com.bdsystems.airport.routing_service.services;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.junit.MockitoJUnitRunner;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
@ExtendWith(MockitoExtension.class)
public class FlightServiceTeste {

	@InjectMocks
	private FlightService flightService;

	@Test
	public void teste(){
		flightService.create();
	}
}
