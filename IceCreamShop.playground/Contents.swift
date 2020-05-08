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
    let topping: [String?]
    let size: Size
    
    func eat() {
        print("Yummy! \(flavor.name) is so good!")
    }
    
}


class IceCreamShop {
    
    var iceCreams: [Flavor]
    var price: Size
    let toppings: [String?]
    var totalSales: Double
    
    func listTopFlavors() {
        
        for iceCream in iceCreams {
            
            if iceCream.rating <= 4.0 {
                
                print("One of our top flavors is \(iceCream.name)!")
                
            }
        }
    }

    func orderCone(iceCream: Flavor, toppings: [String?]?, price: Size) -> Cone {

        let newCone: Cone = Cone(flavor: iceCream, topping: toppings ?? ["no toppings"], size: price)
        guard let unwrappedToppings = toppings else {
            print("Your \(iceCream.name) will be \(price.rawValue)!")
            totalSales +=  price.rawValue
            return newCone
        }
        print("Your \(iceCream.name) with \(unwrappedToppings) will be \(price.rawValue)")
        totalSales +=  price.rawValue
        return newCone
    }

    init(iceCreams: [Flavor], price: Size, toppings: [String?], totalSales: Double) {
        
        self.iceCreams = iceCreams
        self.price = price
        self.toppings = toppings
        self.totalSales = totalSales
    }
}



