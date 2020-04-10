import UIKit

struct Flavor {
    let name: String
    let rating: Int
}

enum Size: Double {
    case small = 1.89
    case medium = 2.50
    case large = 3.19
}

enum Topping: String {
    case nuts
    case hotFudge
    case sprinkles
}

struct Cone {
    let flavor: String
    let topping: [Topping]?
    let size: Size
    
    func eat() {
        print("wow. this is really good \(self.flavor) gelato.")
    }
}
//  cone struct working with eat functionality
let ice = Cone(flavor: "mango", topping: nil, size: .medium)
ice.eat()

let yum = Flavor(name: "chocolate", rating: 5)
let twoScoops = Size.medium

class IceCreamShop {
    var flavors: [Flavor]
    var sizes: [Size]
    var toppings: [Topping]
    var totalSales: Double
    
    init(flavors: [Flavor], sizes: [Size], toppings: [Topping], totalSales: Double = 0) {
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
        self.totalSales = totalSales
    }
    
    func listTopFlavors() -> String {
        var topFlavors = [String]()
        for flavor in flavors {
            if flavor.rating > 4 {
                topFlavors.append(flavor.name)
            }
        }
        return "our top flavors are: \(topFlavors)."
    }
}
