import SwiftUI
import MapKit

struct MapWithCluesView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 40.7128, longitude: -74.0060),
        span: MKCoordinateSpan(latitudeDelta: 50, longitudeDelta: 50)
    )

    // Harita üzerindeki şehirlerin bilgileri
    let flightPathCoordinates: [FlightPathLocation] = [
        FlightPathLocation(coordinate: CLLocationCoordinate2D(latitude: 40.7128, longitude: -74.0060), cityName: "New York"),
        FlightPathLocation(coordinate: CLLocationCoordinate2D(latitude: 51.5074, longitude: -0.1278), cityName: "London"),
        FlightPathLocation(coordinate: CLLocationCoordinate2D(latitude: 48.8566, longitude: 2.3522), cityName: "Paris"),
        FlightPathLocation(coordinate: CLLocationCoordinate2D(latitude: 35.6762, longitude: 139.6503), cityName: "Tokyo")
    ]

    var body: some View {
        VStack {
            Text("Keşif Haritası 🌍✈️")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()

            Map(coordinateRegion: $region, interactionModes: [.pan, .zoom], showsUserLocation: true, annotationItems: flightPathCoordinates) { location in
                MapAnnotation(coordinate: location.coordinate) {
                    ZStack {
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 30, height: 30)
                        Text(location.cityName.prefix(1)) // Şehir isminin ilk harfi
                            .font(.caption)
                            .foregroundColor(.white)
                    }
                }
            }
            .frame(height: 300)
            .cornerRadius(10)
            .padding()

            Spacer()
        }
        .padding()
    }
}

#Preview {
    MapWithCluesView()
}
