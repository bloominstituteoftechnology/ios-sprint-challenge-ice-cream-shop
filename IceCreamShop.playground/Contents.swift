// Jorge Alvarez

import UIKit
import Foundation

// 1
struct Flavor {
    var name: String
    var rating: Double
}

// 2
enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 6.99
}

// 3
struct Cone {
    let flavor: Flavor
    let topping: String
    let size: Size
    
    func eat() {
        print("Mmmm! I love \(self.flavor.name)!")
    }
}

// 4, 5, 6
class IceCreamShop {
    var flavors:[Flavor]
    var sizes: [Size]
    var toppings: [String]
    var totalSales: Double
    
    init(flavors: [Flavor], sizes: [Size], toppings: [String]) {
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
        self.totalSales = 0.0
    }
    
    // 5
    func listOfTopFlavor() {
        var topFlavors: String = "Our top flavors are "
        for flavor in self.flavors {
            if flavor.rating >= 4.0 {
                topFlavors += "\(flavor.name), "
            }
        }
        print(topFlavors)
    }
    
    // 6
    func orderCone(flavor: Flavor, topping: String?, size: Size) -> Cone? {
        let customersCone: Cone? = Cone(flavor: Flavor(name: flavor.name, rating: flavor.rating), topping: topping ?? "", size: size)
        if let unwrappedCone = customersCone {
            if unwrappedCone.topping != "" {
                self.totalSales += unwrappedCone.size.rawValue
                print("Your \(unwrappedCone.flavor.name) ice cream with \(unwrappedCone.topping) is \(unwrappedCone.size.rawValue).")
            }
            else {
                self.totalSales += unwrappedCone.size.rawValue
                print("Your \(unwrappedCone.flavor.name) ice cream is \(unwrappedCone.size.rawValue).")
            }
            return unwrappedCone
        }
        // How do you order a nil Cone??? Main thing I'm confused about
        //return customersCone
    }
    
}

// 7
let chocolate = Flavor(name: "chocolate", rating: 5.0)
let vanilla = Flavor(name: "vanilla", rating: 4.0)
let strawberry = Flavor(name: "strawberry", rating: 3.0)

let flavorArray: [Flavor] = [chocolate, vanilla, strawberry]
let sizeArray:[Size] = [.large, .medium, .small]
let toppingsArray: [String] = ["cherries", "sprinkles", "chocolate chips"]

// 8
let myIceCreamShop = IceCreamShop(flavors: flavorArray, sizes: sizeArray, toppings: toppingsArray)

// 9
myIceCreamShop.listOfTopFlavor()

// 10
let cone1: Cone? = myIceCreamShop.orderCone(flavor: chocolate, topping: "sprinkles", size: .large)
let cone2: Cone? = myIceCreamShop.orderCone(flavor: strawberry, topping: "cherries", size: .medium)
let cone3: Cone? = myIceCreamShop.orderCone(flavor: vanilla, topping: nil, size: .small)
let cone4: Cone? = nil

// 11
cone1?.eat()
cone2?.eat()
cone3?.eat()
cone4?.eat()

//Testing totalSales is not asked for in instructions for some reason
//print("total sales is \(myIceCreamShop.totalSales)")


