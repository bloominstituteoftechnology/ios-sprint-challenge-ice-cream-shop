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
    
    func listOfTopFlavor() {
        var topFlavors: String = "Our top flavors are " // Change later
        for flavor in self.flavors {
            if flavor.rating >= 4.0 {
                topFlavors += "\(flavor.name), "
            }
            // Stretch goal, fix formatting for last flavor and add "and" ???
        }
        print(topFlavors)
    }
    
    func orderCone(flavor: Flavor, topping: String?, size: Size) -> Cone{
        let customersCone: Cone? = Cone(flavor: Flavor(name: flavor.name, rating: flavor.rating), topping: topping ?? "", size: size)
        if let unwrappedCone = customersCone {
            if unwrappedCone.topping != "" {
                self.totalSales += unwrappedCone.size.rawValue // Added last, after making this a method
                print("Your \(unwrappedCone.flavor.name) ice cream with \(unwrappedCone.topping) is \(unwrappedCone.size.rawValue).")
            }
                // for no toppings
            else {
                print("Your \(unwrappedCone.flavor.name) ice cream is \(unwrappedCone.size.rawValue).")
            }
            return unwrappedCone
        }
        // How do you order a nil Cone??
        //return customersCone
    }
    
}


//print(orderCone(flavor: Flavor(name: "chocolate", rating: 4.0), topping: "sprinkles", size: .medium))
let chocolate = Flavor(name: "chocolate", rating: 5.0)
let vanilla = Flavor(name: "vanilla", rating: 4.0)
let strawberry = Flavor(name: "strawberry", rating: 3.0)
let flavorArray: [Flavor] = [chocolate, vanilla, strawberry]

let sizeArray:[Size] = [.large, .medium, .small]

let toppingsArray: [String] = ["cherries", "sprinkles", "chocolate chips"]

let myIceCreamShop = IceCreamShop(flavors: flavorArray, sizes: sizeArray, toppings: toppingsArray)

myIceCreamShop.listOfTopFlavor()

let cone1: Cone = myIceCreamShop.orderCone(flavor: chocolate, topping: "sprinkles", size: .large)
cone1.eat()

