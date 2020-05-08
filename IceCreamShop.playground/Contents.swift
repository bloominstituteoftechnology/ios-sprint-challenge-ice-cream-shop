import UIKit

struct Flavor {
    var name: String
    var rating: Int
}

enum Size: Double {
    case small = 2.99
    case medium = 3.99
    case large = 4.99
}

struct Cone {
    var flavor: String
    var topping: String
    var size: [Size]
    
    func eat() {
        print("Mmm! I love \(flavor)!")
    }
}

class IceCreamShop {
    var flavors: [Flavor]
    var sizes: [Size]
    var toppings: [Cone]
    var totalSales: Double
    
    init(flavors: [Flavor], sizes: [Size], toppings: [Cone], totalSales: Double) {
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
        self.totalSales = totalSales
    }
}

func listTopFlavors() {
    for flavors in Flavor.rating {
        if flavors.rating > 4 {
            print("Our top flavors are \(flavors.name)")
        }
    }
}

func orderCone
