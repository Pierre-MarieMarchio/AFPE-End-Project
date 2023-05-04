import Foundation
import MapKit
import CoreData

class ApplicationData: NSObject, ObservableObject, CLLocationManagerDelegate {
    
    // pour la carte
    var selectedPlace:Place?
    
    //pour MapKit
    @Published var region: MKCoordinateRegion = MKCoordinateRegion() // est la région affichée sur la carte
    
    let manager = CLLocationManager() // est un agent qui s'occupe de demander les autorisations pour obtenir la position de l'utilisateur ; je l'ai intégré à l'appData
    
    override init() {
        
        // il est nécessaire d'initialiser le container, définir son comportement, avant de l'utiliser
        super.init()
        manager.delegate = self
        manager.desiredAccuracy = 100 // précision souhaitée de 100 mètres
        
    }
    
    // ce qui suit est nécessaire pour obtenir la position de l'utilisateur
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations:[CLLocation]) {
        if let coordinates = locations.first?.coordinate {
            region = MKCoordinateRegion(center: coordinates, latitudinalMeters: 2500, longitudinalMeters: 2500) // met à jour region dès qu'on fait une nouvelle demande de position
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        
    }
}
