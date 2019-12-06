//Aaron Cleveland

import UIKit

struct Flavor {
    let name: String
    var rating: Double
}

struct Cone {
    enum Size: Double {
        case small = 3.99
        case medium = 5.99
        case large = 7.99
    }
    
    let flavor: String
    let size: Size
    
    func eat() {
        print("Mmm! I love \(flavor)")
    }
}


class IceCreamShop {
    var flavors: [Flavor]
    var sizes: [Cone.Size]
    var toppings: [String]
    var totalSales: Double
    
    init(flavors: [Flavor], sizes: [Cone.Size], toppings: [String]) {
        self.sizes = sizes
        self.flavors = flavors
        self.toppings = toppings
        self.totalSales = 0.0
    }
    
    func listTopFlavors() {
        for flavor in flavors {
            if flavor >= 4.0 {
                print("Our top flavors are \(flavor.name)")
            } else if flavor <= 3.9 {
                print("These are the rest of our flavors \(flavor.name)")
            } else {
                print("We don't have a top flavor!")
            }
        }
    }
}

