package com.bdsystems.airport.routing_service.domains;

import lombok.Builder;

import java.time.LocalDate;
import java.time.LocalTime;

@Builder
public record FlightMo(
				Long id,
				String passengerName,
				String flightReference,
				LocalDate flightDate,
				LocalTime flightTime,
				String flightType,
				String bagType
) {
}
