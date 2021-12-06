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
    var nomeAssociazione: String
    var indirizzo: String
    var numeroTelefono: String
    var descrizione: String
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
    
    var location = 40.855056601724044...42.855056601724044
    @State private var bottomSheetShown = false
    @State var nomeAssociazionePin = "Tocca su un puntino"
    @State var indirizzoPin = "Ti forniremo più indicazioni"
    @State var numeroTelefonoPin = ""
    @State var descrizionePin = ""
    
    var body: some View {
        
        GeometryReader { geometry in
            VStack{
                
                //            Map(coordinateRegion: $region, interactionModes: .all, showsUserLocation: true, userTrackingMode: $tracking)
                
                Map(coordinateRegion: $managerDelegate.region, interactionModes: .all, showsUserLocation: true, userTrackingMode: $tracking, annotationItems: managerDelegate.lands) { pin in
                    //                    MapPin(coordinate: pin.location.coordinate, tint: .green) //  <--- Pin standard
                    
                    MapAnnotation(coordinate: pin.locationCoordinate) {
                        VStack {                                       //<---       Pin personalizzato con TapGesture
                            Image(systemName: "mappin.circle.fill")
                                .font(.system(size: 30))
                                .foregroundColor(.red)
                            
                            //         [Come mostrare nella modal solo i pin vicini?
                            //         Forse testando pin.location.coordinate se
                            //          all'interno di un certo range.]
                        }                                    // Esempio:
                        //                                                               var location = coordinates + 2
                        //                                                               if (coordinates...location).contains(pin){aggiungi a modale pin.info}
                        .onTapGesture {
                            indirizzoPin = pin.name
//                            nomeAssociazionePin = pin.nomeAssociazione
//                            numeroTelefonoPin = pin.numeroTelefono
//                            descrizionePin = pin.descrizione
                        }
                        
                    } //.edgesIgnoringSafeArea(.all)
                }.onAppear{
                    manager.delegate = managerDelegate
                    
                }
                .edgesIgnoringSafeArea(.all)
                
                
            }
            BottomSheetView(
                isOpen: self.$bottomSheetShown,
                maxHeight: geometry.size.height * 0.7
            ) {
                Text(nomeAssociazionePin).font(.title)
                Text(indirizzoPin)
                Text("\n\n")
                List{
                    
                    Text("Contatti: \(numeroTelefonoPin)")
                    
                    Text(descrizionePin)
                }
                
                
                
                
                
            }
        }.edgesIgnoringSafeArea(.all)
        
        
        
    }
}

class locationDelegate: NSObject,ObservableObject,CLLocationManagerDelegate{
    var pins : [Pin] = []
    var lands : [Landmark] = []
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
            print("not authorizeed")
            manager.requestWhenInUseAuthorization()
        }
    }
    
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        
        //        Creo array myPin
//        let myPin: [Pin] = [
//            Pin(location: CLLocation(latitude:40.90730440345204, longitude:14.75453973651237),
//                nomeAssociazione: "Centro Antiviolenza PdZ A02",
//                indirizzo: "Via Nazionale 222 presso il Centro Sociale P. Campanello 80013 - Mercogliano (AV)",
//                numeroTelefono: "0825-682501",
//                descrizione: "Centro antiviolenza"),
//            Pin(location: CLLocation(latitude:41.039990244809694, longitude:14.382515760918347),
//                nomeAssociazione: "Cooperativa Eva" ,
//                indirizzo: "Via G. Amendola, 15, 81024 Maddaloni CE",
//                numeroTelefono: "082-3204145",
//                descrizione: "Informazioni sulla Cooperativa Eva"),
//            Pin(location: CLLocation(latitude:40.944596372450285, longitude:14.36566292163162),
//                nomeAssociazione: "La Casa di Marinella",
//                indirizzo: "Via Volturno, 71, 80011 Acerra NA",
//                numeroTelefono: "081-5201470",
//                descrizione: "Informazioni su La Casa di Marinella"),
//            Pin(location: CLLocation(latitude:40.85258986902009, longitude:14.333050897689262),
//                nomeAssociazione: "Sportello Donna Le Kassandre",
//                indirizzo: "Corso Ponticelli, 40, 80147 Napoli NA",
//                numeroTelefono: "388-0979950",
//                descrizione: "Informazioni su Sportello Donna Le Kassandre"),
//            Pin(location: CLLocation(latitude:40.84578935394306, longitude:14.36968345635139),
//                nomeAssociazione: "Sportello Lilith",
//                indirizzo: "Via Luca Giordano, 24, 80040 San Sebastiano Al Vesuvio NA",
//                numeroTelefono: "331-9021391",
//                descrizione: "Informazioni su Sportello Lilith")
//        ]
        
        pins = []

        //        pins.append(Pin(location:locations.last!))            Pin GPS
        
        for land in landmarks {
            lands.append(land)
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




