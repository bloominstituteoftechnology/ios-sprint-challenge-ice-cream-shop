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
        let topFlavors: String = "all of flavors are " // Change later
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
let flavor1 = Flavor(name: "Chocolate", rating: 5.0)
let flavor2 = Flavor(name: "Vanilla", rating: 4.0)
let flavor3 = Flavor(name: "Strawberry", rating: 3.0)

let sizeArray:[Size] = [.large, .medium, .small]

let toppingsArray: [String] = ["cherries", "sprinkles", "chocolate chips"]


