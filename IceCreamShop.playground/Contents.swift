// Jorge Alvarez
import UIKit
import Foundation

struct Flavor {
    var name: String
    var rating: Double
}

enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 6.99
}

struct Cone {
    let flavor: Flavor
    let topping: String
    let size: Size
    
    func eat() {
        print("Mmmm! I love \(self.flavor.name)!")
    }
}

class IceCreamShop {
    var flavors:[Flavor]
    var sizes: [Size]
    var toppings: [String] //?
    var totalSales: Double
    
    init(flavors: [Flavor], sizes: [Size], toppings: [String]) {
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
        self.totalSales = 0.0 //?
    }
}
