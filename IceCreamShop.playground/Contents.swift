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

// test code heretofore
let yum = Flavor(name: "lemon", rating: 3.05)
let twoScoops = Size.medium
var double = Cone(flavor: "lemon", topping: nil, size: twoScoops)
double.eat()
// so far, so good

class IceCreamShop {
    var flavors: [Flavor]
    var sizes: [Size]
    var toppings: [Topping]
    var totalSales: Double
    
    init(flavors: [Flavor], sizes: [Size], toppings: [Topping], totalSales: Double) {
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
        self.totalSales = totalSales
    }
    
    func listTopFlavors() -> String {
        var topFlavors = [String]()
        for flavor in flavors {
            if flavor.rating > 4.0 {
                topFlavors.append(flavor.name)
            }
        }
        return "our top flavors are: \(topFlavors)."
    }
    
    func orderCone(flavor: Flavor, topping:[String]?, size: Size) -> Cone? {
        let order = Cone(flavor: flavor.name, topping: toppings, size: size)
        totalSales += order.size.rawValue
        if let topping = topping {
            print("your \(flavor) ice cream cone with \(topping) is \(size.rawValue).")
        } else {
            print("your \(flavor) ice cream cone is \(size.rawValue).")
        }
        return order
    }
}

let stracciatella = Flavor(name: "strawberry", rating: 5)
let pistachio = Flavor(name: "pistach", rating: 4)
let choc = Flavor(name: "chocolate", rating: 4.55)
let oneScoop = Size.small
let two = Size.medium
let threeScoops = Size.large
let choco = Topping.hotFudge

let iceRay = [stracciatella, pistachio, choc]
let fun = [oneScoop, two, threeScoops]
let top = [choco]

let rons = IceCreamShop(flavors: iceRay, sizes: fun, toppings: top, totalSales: 0.0)

print(rons.listTopFlavors())

let david = Cone(flavor: "pistachio", topping: top, size: two)
rons.orderCone(flavor: pistachio, topping: nil, size: two)

david.eat()
print(rons.totalSales)
