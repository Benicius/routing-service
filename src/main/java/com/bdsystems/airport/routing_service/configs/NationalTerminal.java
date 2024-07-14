package com.bdsystems.airport.routing_service.configs;

import lombok.Data;

@Data
public class NationalTerminal {
	private String terminalNumber;
	private int airplaneCapacity;
	private String targetType;
	private String airplanePort;
}
