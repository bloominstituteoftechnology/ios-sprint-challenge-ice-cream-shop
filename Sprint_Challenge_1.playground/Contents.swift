import UIKit

var str = "Hello, playground"

struct Flavor {
    let name: String
    let rating: Double
}

enum Size: Double {
    case small = 20.99
    case medium = 39.99
    case large = 47.99
}

enum Topping: String {
    case nuts = "chopped nuts"
    case carmel = "carmel"
    case strawberry = "strawberry chunks"
    case whippedCream = "whipped cream"
    case chocholateSyrup = "chocholate syrup"
    case sprinkles = "sprinkles"
}

struct Cone {
    let flavor: Flavor
    let topping: Topping?
    let size: Size

    func eat() {
        print("Mmm! I love \(self.flavor.name)!")
    }
}

class IceCreamShop {
    var flavors: [Flavor]
    var toppings: [Topping]
    var sizes: [Size]
    var totalSales: Double

    init(flavors: [Flavor], toppings: [Topping], sizes: [Size]) {
        self.flavors = flavors
        self.toppings = toppings
        self.sizes = sizes
        self.totalSales = 0
    }

    func listTopFlavors() {
        print("Our top flavors are:")
        for flavor in flavors {
            if flavor.rating > 4 {
                print("\(flavor.name)")
            }
        }
    }

    func orderCone(flavor: Flavor, topping: Topping?, size: Size) -> Cone? {
            let orderedCone = Cone(flavor: flavor, topping: topping, size: size)
        totalSales += size.rawValue
        if let orderedTopping = orderedCone.topping?.rawValue {
            print("Your \(orderedCone.flavor.name) ice cream with \(orderedTopping) is $\(orderedCone.size.rawValue).")
        } else {
            print("Your \(orderedCone.flavor.name) ice cream is $\(orderedCone.size.rawValue).")
        }
        return orderedCone
    }
}

var mySizes = [Size.small, Size.medium, Size.large]

let pineapple = Flavor(name: "Pineapple", rating: 0.0)
let strawberry = Flavor(name: "strawberry", rating: 7.2)
let vanilla = Flavor(name: "vanilla", rating: 9.9)
let carmeldeluce = Flavor(name: "Carmel", rating: 1.0)
let cheesecake = Flavor(name: "Cheesecake", rating: 9.1)
let applePie = Flavor(name: "ApplePie", rating: 6.9)

var myFlavors = [pineapple, strawberry, vanilla, carmeldeluce, cheesecake, applePie]

var myToppings = [Topping.nuts, Topping.carmel, Topping.strawberry, Topping.whippedCream, Topping.chocholateSyrup, Topping.sprinkles]

var myShop = IceCreamShop(flavors: myFlavors, toppings: myToppings, sizes: mySizes)

myShop.listTopFlavors()

myShop.orderCone(flavor: pineapple, topping: Topping.nuts, size: Size.small)

let myCone = myShop.orderCone(flavor: cheesecake, topping: nil, size: Size.large)

myCone?.eat()

print(myShop.totalSales)




