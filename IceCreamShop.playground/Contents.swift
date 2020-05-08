import UIKit

struct Flavor {
    
    let name: String
    let rating: Double
    
}

enum Size: Double {
    
    case small = 0.25
    case medium = 0.50
    case large = 0.75
    
}

struct Cone {
    
    let flavor: Flavor
    let topping: String
    let size: Size
    
    func eat() {
        print("Yummy! \(flavor.name) is so good!")
    }
    
}


class IceCreamShop {
    
    var iceCreams: [Flavor]
    var price: Size
    let topping: String
    var totalSales: Double
    
    func listTopFlavors() {
        
        for iceCream in iceCreams {
            
            if iceCream.rating <= 4.0 {
                
                print("One of our top flavors is \(iceCream.name)!")
                
            }
        }
    }
    
    func orderCone(flavor: Flavor, topping: String?, size: Size) -> Cone {
        
        var total: Double = size.rawValue + totalSales
        
        
        
        return Any
    }
    
    init(iceCreams: [Flavor], price: Size, topping: String, totalSales: Double) {
        
        self.iceCreams = iceCreams
        self.price = price
        self.topping = topping
        self.totalSales = totalSales
    }
}
