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
    @State var testo = "Test"
    var location = 40.855056601724044...42.855056601724044
    var body: some View {
        
        VStack{
            //            Map(coordinateRegion: $region, interactionModes: .all, showsUserLocation: true, userTrackingMode: $tracking)
            
            Map(coordinateRegion: $managerDelegate.region, interactionModes: .all, showsUserLocation: true, userTrackingMode: $tracking, annotationItems: managerDelegate.pins) { pin in
                MapAnnotation(coordinate: pin.location.coordinate) {
//                    VStack {                                                  Pin personalizzato con TapGesture
//                        Circle().frame(width: 10, height: 10)                 Come mostrare nella modal solo i pin vicini?
//                        Text(testo)                                           Forse testando pin.location.coordinate se
//                                //     ...                                    all'interno di un certo range.
//                            }                                     Esempio:
//                                                               var location = coordinates + 2
//                                                               if (coordinates...location).contains(pin){aggiungi a modale pin.info}
//                        .onTapGesture {
//                            testo = "Works"
//                    }
                }
//                MapPin(coordinate: pin.location.coordinate, tint: .green)        Pin standard
                
                
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
            Pin(location: CLLocation(latitude:40.855056601724044, longitude:14.272703345425093)),
            Pin(location: CLLocation(latitude:40.85273323820153, longitude:14.333115270988346))
        ]
        
        pins = []
        //        pins.append(Pin(location:locations.last!))            Pin GPS
        
        for pin in myPin {
            pins.append(pin)
        }
        
        
        // From here and down is new
        if let location = locations.last {
            
            self.location = location
            
            if hasSetRegion == false{
                region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: CLLocationDistance(exactly: 50000)!, longitudinalMeters: CLLocationDistance(exactly: 50000)!)
                hasSetRegion = true
            }
        }
    }
}




