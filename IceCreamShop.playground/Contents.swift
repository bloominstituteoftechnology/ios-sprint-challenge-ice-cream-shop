import UIKit

// Tracking total sales = #4b
var totalSales: Double = 0.0

// #1
struct Flavor {
    var name: String
    var rating: Int
}

// #2
enum Size: Double {
    case small = 2.99
    case medium = 3.99
    case large = 4.99
}

// #3
struct Cone {
    var flavor: String
    var topping: String?
    var size: [Size]
    
    func eat() {
        print("Mmm! I love \(flavor)!")
    }
    
}

// #4
class IceCreamShop {
    var flavors: [Flavor]
    var sizes: [Size]
    var toppings: [Cone]
    
    init(flavors: [Flavor], sizes: [Size], toppings: [Cone]) {
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
        
    }
    
    // #5
    func listTopFlavors() {
        let topFlavors = IceCreamShop(flavors: flavors, sizes: sizes, toppings: toppings)
        for eachFlavors in topFlavors.flavors {
            if eachFlavors.rating > 4 {
                print("Our top flavors are \(eachFlavors.name)")
            }
        }
    }
}

// #6
func orderCone(cone: Cone) -> Cone? {
    let newCone = Cone(flavor: cone.flavor, topping: cone.topping, size: cone.size)
    totalSales = totalSales + newCone.size
    guard let unwrappedConeTopping = cone.topping else {
        print("Your \(cone.flavor) is \(cone.size)")
    }
    
    print("Your \(cone.flavor) with \(unwrappedConeTopping) is \(cone.size)")
}

// #7
let vanilla = Flavor(name: "vanilla", rating: 3)
let chocolate = Flavor(name: "chocolate", rating: 4)
let mintChocolate = Flavor(name: "mint chocolate", rating: 5)
let strawberry = Flavor(name: "strawberry", rating: 5)
let peach = Flavor(name: "peach", rating: 1)

let order1 = Cone(flavor: vanilla.name, topping: "sprinkles", size: [Size.medium])
let order2 = Cone(flavor: chocolate.name, topping: nil, size: [Size.small])
let order3 = Cone(flavor: mintChocolate.name, topping: "sprinkles", size: [Size.large])

// #8
let orderOne = IceCreamShop(flavors: vanilla.name, sizes: order1.size, toppings: order1.topping)

// #9
IceCreamShop.listTopFlavors(orderOne)

// #10
var orderI = orderCone(cone: order1)
var orderII = orderCone(cone: order2)
var orderIII = orderCone(cone: order3)

// #11
let coneOne = Cone.eat(orderI)

// #12
print(totalSales)







