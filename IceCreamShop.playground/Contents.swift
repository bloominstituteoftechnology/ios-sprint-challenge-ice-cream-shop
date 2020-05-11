import UIKit

// Tracking total sales = #4b
var totalSales: Double = 0.0

let vanilla = Flavor(name: "vanilla", rating: 3)
let chocolate = Flavor(name: "chocolate", rating: 4)
let mintChocolate = Flavor(name: "mint chocolate", rating: 5)
let strawberry = Flavor(name: "strawberry", rating: 5)
let peach = Flavor(name: "peach", rating: 1)

var allFlavors = [vanilla, chocolate, mintChocolate, strawberry, peach]


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
    var flavor: Flavor
    var topping: String?
    var size: Size
    
    func eat() {
        print("Mmm! I love \(self.flavor.name)!")
    }
    
}

// #4
class IceCreamShop {
    var flavors: [Flavor]
    var sizes: Size
    var toppings: [Cone]
    
    init(flavors: [Flavor], sizes: Size, toppings: [Cone]) {
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
        
        }
    }
    
    // #5
func listTopFlavors() {
    for eachFlavors in allFlavors {
        if eachFlavors.rating > 4 {
            print ("Our top flavors are \(eachFlavors.name)")
        }
    }
    }


// #6
func orderCone(cone: Cone) -> Cone? {
    let newCone = Cone(flavor: cone.flavor, topping: cone.topping, size: cone.size)
    totalSales = totalSales + newCone.size.rawValue
    guard let unwrappedConeTopping = newCone.topping else {
        print("Your \(newCone.flavor.name) is \(newCone.size.rawValue)")
        return newCone
    }
    
    print("Your \(newCone.flavor.name) with \(unwrappedConeTopping) is \(newCone.size.rawValue)")
    return newCone
}

// #7

let order1 = Cone(flavor: vanilla, topping: "sprinkles", size: Size.medium)
let order2 = Cone(flavor: chocolate, topping: nil, size: Size.small)
let order3 = Cone(flavor: mintChocolate, topping: "sprinkles", size: Size.large)

var allOrders = [order1, order2, order3]

// #8
let orderOne = IceCreamShop(flavors: allFlavors, sizes: Size.small , toppings: allOrders)

// #9
listTopFlavors()

// #10
let orderI = orderCone(cone: order1)
let orderII = orderCone(cone: order2)
let orderIII = orderCone(cone: order3)

// #11
// let coneOne = Cone.eat() // Write this didn't work and why 99 worked
// The reason why line 97 doesn't work is because coneOne hasn't been declared a type yet.
// In line 97, coneOne has not been created as a Cone because no info has been passed into it yet.
// In line 103, x is a created Cone type, which then allows to call function "eat".

let x = Cone(flavor: vanilla, topping: "sprinkles", size: .large)
x.eat()

// #12
print(totalSales)


//properties and identities

//resubmit new retro
