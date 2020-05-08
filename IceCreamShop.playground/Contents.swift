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
    
    func orderCone(cone: Cone) -> Cone? {
    let newCone = Cone(flavor: flavor, topping: topping, size: size)
        
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
    
    func listTopFlavors() {
        let topFlavors = IceCreamShop(flavors: flavors, sizes: sizes, toppings: toppings, totalSales: totalSales)
        for eachFlavors in topFlavors.flavors {
            if eachFlavors.rating > 4 {
                print("Our top flavors are \(eachFlavors.name)")
            }
        }
    }
}




let vanilla = Flavor(name: "Vanilla", rating: 3)
let chocolate = Flavor(name: "Chocolate", rating: 4)
let mintChocolate = Flavor(name: "Mint Chocolate", rating: 5)
let strawberry = Flavor(name: "Strawberry", rating: 5)
let peach = Flavor(name: "Peach", rating: 1)
