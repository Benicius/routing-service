package com.bdsystems.airport.routing_service.services;

import com.bdsystems.airport.routing_service.configs.AirportProperties;
import org.springframework.stereotype.Service;

@Service
public class FlightService {

	private final AirportProperties airportProperties;

	public FlightService(AirportProperties airportProperties) {
		this.airportProperties = airportProperties;
	}

	public void create() {
		System.out.println("national: " + airportProperties.getNational());
		System.out.println("international: " + airportProperties.getInternational());
	}
}
