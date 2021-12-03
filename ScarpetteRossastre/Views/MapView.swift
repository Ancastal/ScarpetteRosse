import SwiftUI
import MapKit
import CoreLocation


//Creo una nuova struct
struct MyPin: Identifiable {
    var coordinate: CLLocationCoordinate2D
    let id = UUID()
}


// Map pins for update
struct Pin : Identifiable{
    
    var id = UUID()
    var location : CLLocation
}


struct MapView: View {
    
    var body: some View {
        Home()
    }
}


struct Home: View{
    
    
    
    
    
    
    @State var tracking : MapUserTrackingMode = .follow
    
    @State var manager = CLLocationManager()
    
    @StateObject var managerDelegate = locationDelegate()
    
    var body: some View {
        VStack{
            //            Map(coordinateRegion: $region, interactionModes: .all, showsUserLocation: true, userTrackingMode: $tracking)
            
            Map(coordinateRegion: $managerDelegate.region, interactionModes: .all, showsUserLocation: true, userTrackingMode: $tracking, annotationItems: managerDelegate.pins) { pin in
                MapPin(coordinate: pin.location.coordinate, tint: .red)
                
                
            }.edgesIgnoringSafeArea(.all)
        }.onAppear{
            manager.delegate = managerDelegate
        }
    }
}

class locationDelegate: NSObject,ObservableObject,CLLocationManagerDelegate{
    var pins : [Pin] = []
    
    // From here and down is new
    @Published var location: CLLocation?
    
    @State var hasSetRegion = false
    
    @Published var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 38.898150, longitude: -77.034340),
        span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
    )
    
    
    // Checking authorization status...
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        
        if manager.authorizationStatus == .authorizedWhenInUse{
            print("Authorized")
            manager.startUpdatingLocation()
        } else {
            print("not authorizeeeeed")
            manager.requestWhenInUseAuthorization()
        }
    }
    
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        
//        Creo array myPin
        let myPin: [Pin] = [
            Pin(location: CLLocation(latitude:40.905342, longitude:14.390889)),
            Pin(location: CLLocation(latitude:40.913137, longitude:14.392013))
        ]

        pins = []
        pins.append(Pin(location:locations.last!))
        
        for pin in myPin {
            pins.append(pin)
        }
    
        
        // From here and down is new
        if let location = locations.last {
            
            self.location = location
            
            if hasSetRegion == false{
                region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: CLLocationDistance(exactly: 5000)!, longitudinalMeters: CLLocationDistance(exactly: 5000)!)
                hasSetRegion = true
            }
        }
    }
}




