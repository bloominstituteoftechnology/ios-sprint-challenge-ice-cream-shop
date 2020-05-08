import UIKit

// Tracking total sales
var totalSales: Double = 0.0

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
    var topping: String?
    var size: [Size]
    
    func eat() {
        print("Mmm! I love \(flavor)!")
    }
    
}

class IceCreamShop {
    var flavors: [Flavor]
    var sizes: [Size]
    var toppings: [Cone]
    
    init(flavors: [Flavor], sizes: [Size], toppings: [Cone]) {
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
        
    }
    
    func listTopFlavors() {
        let topFlavors = IceCreamShop(flavors: flavors, sizes: sizes, toppings: toppings)
        for eachFlavors in topFlavors.flavors {
            if eachFlavors.rating > 4 {
                print("Our top flavors are \(eachFlavors.name)")
            }
        }
    }
}

func orderCone(cone: Cone) -> Cone? {
    let newCone = Cone(flavor: cone.flavor, topping: cone.topping, size: cone.size)
    totalSales = totalSales + newCone.size
    guard let unwrappedConeTopping = cone.topping else {
        print("Your \(cone.flavor) is \(cone.size)")
    }
    
    print("Your \(cone.flavor) with \(unwrappedConeTopping) is \(cone.size)")
}

let vanilla = Flavor(name: "vanilla", rating: 3)
let chocolate = Flavor(name: "chocolate", rating: 4)
let mintChocolate = Flavor(name: "mint chocolate", rating: 5)
let strawberry = Flavor(name: "strawberry", rating: 5)
let peach = Flavor(name: "peach", rating: 1)

let order1 = Cone(flavor: vanilla.name, topping: "sprinkles", size: [Size.medium])
let order2 = Cone(flavor: chocolate.name, topping: nil, size: [Size.small])
let order3 = Cone(flavor: mintChocolate.name, topping: "sprinkles", size: [Size.large])

let bigOrder = [order1, order2, order3]

