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
    
    var totalSales: Double = 0
    
    init(flavor: Flavor, size: Size, topping: String?) {
        self.flavor = flavor
        self.size = size
        self.topping = []
        self.flavors = []
    }
    func listTopFlavors() {
        var topFlavors: [Flavor] = []
        for flavor in flavors {
            if flavor.rating > 4.0 {
                topFlavors.append(flavor)
            }
        print("our top flavors are: \(topFlavors).")
        }
    }
    func orderCone(flavor: Flavor, topping:[String]?, size: Size) -> Cone? {
        let order = Cone(flavor: self.flavor, topping: nil, size: self.size)
        size.rawValue + totalSales
        if let topping = topping {
            print("your \(flavor) ice cream cone with \(topping) is \(size.rawValue).")
        } else {
            print("your \(flavor) ice cream cone is \(size.rawValue).")
        }
        return order
    }
}

let stracciatella = Flavor(name: "strawberry", rating: 5)
let piztachio = Flavor(name: "pistach", rating: 4)
let choc = Flavor(name: "chocolate", rating: 4.55)
let oneScoop = Size.small
let two = Size.medium
let threeScoops = Size.large

let gross = Cone(flavor: "vanilla", topping: "sprinkles", size: .small)

let rons = IceCreamShop(flavor: stracciatella, size: two, topping: nil)
rons.listTopFlavors() 
