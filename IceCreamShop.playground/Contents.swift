import UIKit

struct Flavor {
    let name: String
    let rating: Int
}

enum Size: Double {
    case small = 1.89
    case medium = 2.50
    case large = 3.19
}

enum Topping: String {
    case nuts
    case hotFudge
    case sprinkles
}

struct Cone {
    let flavor: String
    let topping: [Topping]?
    let size: Size
    
    func eat() {
        print("wow. this is really good \(self.flavor) gelato.")
    }
}
//  cone struct working with eat functionality
let ice = Cone(flavor: "mango", topping: nil, size: .medium)
ice.eat()

let yum = Flavor(name: "chocolate", rating: 5)
let twoScoops = Size.medium

class IceCreamShop {
    var flavors: [Flavor]
    var sizes: [Size]
    var toppings: [Topping]
    var totalSales: Double
    
    init(flavors: [Flavor], sizes: [Size], toppings: [Topping], totalSales: Double = 0) {
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
        self.totalSales = totalSales
    }
    
    func listTopFlavors() -> String {
        var topFlavors = [String]()
        for flavor in flavors {
            if flavor.rating > 4 {
                topFlavors.append(flavor.name)
            }
        }
        return "our top flavors are: \(topFlavors)."
    }
    
    func orderCone(flavor: Flavor, topping: Topping?, size: Size) -> Cone? {
        let order = Cone(flavor: flavor.name, topping: nil, size: size)
        totalSales += order.size.rawValue
        if let topping = topping {
            print("your \(flavor) ice cream cone with \(topping) is \(size.rawValue).")
        } else {
            print("your \(flavor) ice cream cone is \(size.rawValue).")
        }
        return order
    }
}

let eww = Topping.nuts
var rons = IceCreamShop(flavors: [yum], sizes: [twoScoops], toppings: [eww], totalSales: 15.00)

let stracciatella = Flavor(name: "strawberry", rating: 5)
let pistachio = Flavor(name: "pistach", rating: 4)
let choc = Flavor(name: "chocolate", rating: 5)

let oneScoop = Size.small
let two = Size.medium
let threeScoops = Size.large
let scoops = [oneScoop, two, threeScoops]

let nuts = Topping.nuts
let gross = Topping.sprinkles
let fudge = Topping.hotFudge
let tops = [nuts, gross, fudge]

rons = IceCreamShop(flavors: [stracciatella, pistachio, choc], sizes: scoops, toppings: tops, totalSales: 15)
rons.listTopFlavors()

let david = Cone(flavor: "vanilla bean", topping: nil, size: .large)
rons.orderCone(flavor: choc, topping: nil, size: .small)

david.eat()
print(rons.totalSales)
