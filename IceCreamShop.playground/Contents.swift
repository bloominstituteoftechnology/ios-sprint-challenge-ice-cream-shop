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
    let toppings: [String?]
    var totalSales: Double
    
    func listTopFlavors() {
        
        for iceCream in iceCreams {
            
            if iceCream.rating >= 4.0 {
                
                print("One of our top flavors is \(iceCream.name) with a rating of \(iceCream.rating)!")
                
            }
        }
    }

    func orderCone(iceCream: Flavor, toppings: [String?]?, size: Size) -> Cone {
        let newCone: Cone = Cone(flavor: iceCream, topping: toppings ?? ["no toppings"], size: size)
        guard let unwrappedToppings = toppings else {
            print("Your \(iceCream.name) ice cream cone will be \(size.rawValue)!")
            totalSales +=  size.rawValue
            return newCone
        }
        print("Your \(iceCream.name) ice cream cone with \(unwrappedToppings) will be \(size.rawValue)")
        totalSales +=  size.rawValue
        return newCone
    }

    init(iceCreams: [Flavor], toppings: [String?], totalSales: Double) {
        
        self.iceCreams = iceCreams
        self.toppings = toppings
        self.totalSales = totalSales
    }
}


let lavenderHoney = Flavor(name: "Lavender Honey", rating: 5.0)
let vanilla = Flavor(name: "Vanilla", rating: 4.5)
let lavenderHoneyVanillaTwist = Flavor(name: "Lavender Honey Vanilla Twist", rating: 4.7)
var iceCreams = [lavenderHoney, vanilla, lavenderHoneyVanillaTwist]
let prices: [Size] = [.small, .medium, .small]
let toppings: [String] = ["Sprinkles", "Honey"]

let viIceCreamShop = IceCreamShop(iceCreams: iceCreams, toppings: toppings, totalSales: 0.0)

viIceCreamShop.listTopFlavors()

let visLavenderHoneyCone = viIceCreamShop.orderCone(iceCream: lavenderHoneyVanillaTwist, toppings: ["Honey"], size: .large)
visLavenderHoneyCone.eat()

let eyveCone = viIceCreamShop.orderCone(iceCream: lavenderHoney, toppings: nil, size: .large)
eyveCone.eat()

let bernieCone = viIceCreamShop.orderCone(iceCream: vanilla, toppings: nil, size: .small)
bernieCone.eat()

print(viIceCreamShop.totalSales)
