import UIKit

struct Flavor {
    let name: String
    let rating: Double
}

enum Size: Double {
    case small = 1.89
    case medium = 2.50
    case large = 3.19
}

struct Cone {
    let flavor: String
    let topping: String?
    let size: Size
    
    func eat() {
        print("wow. this is really good \(self.flavor) gelato.")
    }
}
// test code heretofore
let yum = Flavor(name: "lemon", rating: 3.05)
let twoScoops = Size.medium
var double = Cone(flavor: "lemon", topping: nil, size: twoScoops)
double.eat()
// so far, so good

class IceCreamShop {
    var flavor: Flavor
    var size: Size
    var topping: [String]?
    var flavors: [Flavor]
    
    var totalSale: Double = 0
    
    init(flavor: Flavor, size: Size, topping: String?) {
        self.flavor = flavor
        self.size = size
        self.topping = []
        self.flavors = []
    }
    func listTopFlavors() {
        var topFlavors: [String] = []
        for flavor in flavors {
            if flavor.rating > 4.0 {
                topFlavors.append([Flavor])
            }
        print("our top flavors are: \(topFlavors).")
        }
    } 
}

