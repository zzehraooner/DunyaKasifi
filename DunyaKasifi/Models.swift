//
//  Models.swift
//  DunyaKasifi
//
//  Created by Zehra Öner on 27.03.2025.
//

import MapKit

// Verinin Identifiable olmasını sağladık
struct FlightPathLocation: Identifiable {
    var id = UUID()
    var coordinate: CLLocationCoordinate2D
    var cityName: String
}
