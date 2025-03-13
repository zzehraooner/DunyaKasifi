import SwiftUI
import MapKit

struct FlightPathLocation: Identifiable {
    var id = UUID()
    var coordinate: CLLocationCoordinate2D
}

struct FlightRouteView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 40.7128, longitude: -74.0060),
        span: MKCoordinateSpan(latitudeDelta: 50, longitudeDelta: 50)
    )
    
    @State private var userTrackingMode: MapUserTrackingMode = .follow
    
    let flightPathCoordinates: [FlightPathLocation] = [
        FlightPathLocation(coordinate: CLLocationCoordinate2D(latitude: 40.7128, longitude: -74.0060)),
        FlightPathLocation(coordinate: CLLocationCoordinate2D(latitude: 51.5074, longitude: -0.1278)),
        FlightPathLocation(coordinate: CLLocationCoordinate2D(latitude: 48.8566, longitude: 2.3522)),
        FlightPathLocation(coordinate: CLLocationCoordinate2D(latitude: 35.6762, longitude: 139.6503))
    ]
    
    var body: some View {
        VStack {
            Text("Uçuş Rotası 🌍✈️")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            Map(
                coordinateRegion: $region,
                showsUserLocation: true,
                userTrackingMode: $userTrackingMode,
                annotationItems: flightPathCoordinates
            ) { location in
                MapAnnotation(coordinate: location.coordinate) {
                    Image(systemName: "airplane.circle.fill")
                        .foregroundColor(.blue)
                        .font(.title)
                }
            }
            .frame(height: 300)
            .cornerRadius(10)
            .padding()
            
            // Polyline eklemek için iOS 17 ve daha yeni sürümlerinde geçerli olacak kod
            if #available(iOS 17.0, *) {
                Map(
                    coordinateRegion: $region,
                    showsUserLocation: true,
                    userTrackingMode: $userTrackingMode
                ) {
                    MapPolyline(coordinates: flightPathCoordinates.map { $0.coordinate })
                        .stroke(Color.blue, lineWidth: 3)
                }
                .frame(height: 300)
                .cornerRadius(10)
                .padding()
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    FlightRouteView()
}
