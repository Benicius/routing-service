package com.bdsystems.airport.routing_service.configs;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

import java.util.List;

@Configuration
@ConfigurationProperties(prefix = "airport.terminal")
@Data
public class AirportProperties {
	private List<NationalTerminal> national;
	private List<InternationalTerminal> international;

	public List<NationalTerminal> getNational() {
		return national;
	}

	public List<InternationalTerminal> getInternational() {
		return international;
	}
}
