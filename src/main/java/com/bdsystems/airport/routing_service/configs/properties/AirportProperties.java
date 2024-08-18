package com.bdsystems.airport.routing_service.configs.properties;

import lombok.Data;
import lombok.Getter;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

import java.util.List;

@Getter
@Configuration
@ConfigurationProperties(prefix = "airport.terminal")
@Data
public class AirportProperties {
	private List<NationalTerminal> national;
	private List<InternationalTerminal> international;

}
