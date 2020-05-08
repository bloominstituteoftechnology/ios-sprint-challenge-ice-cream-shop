// Ian Becker

struct Flavor {
    var name: String
    var rating: Double
}

enum Size: Double {
    case small
    case medium
    case large
}

struct Cone {
    let flavor: String
    let topping: String?
    let size: String
    
    func eat() {
        print("My favorite flavor is \(self.flavor).")
    }
}

let myFavoriteCone = Cone(flavor: "vanilla", topping: "sprinkles", size: "small")

myFavoriteCone.eat()

class IceCreamShop {
    var flavors: [Flavor]
    var sizes: [Size]
    var toppings: [String]
    var totalSales: Double = 3.99
    
    init(flavors: [Flavor], sizes: [Size], toppings: [String], totalSales: Double) {
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
        self.totalSales = totalSales
    }
    func listTopFlavors() {
        for flavor in flavors {
            if flavor.rating >= 4.0 {
                print("Our most popular flavors are \(flavors).")
            }
        }
    }
}

var orderedCone: Cone? = Cone(flavor: "Chocolate", topping: nil, size: "Medium")
        
func orderCone(orderedCone: Cone) -> Cone? {
    if let orderedCone = Cone?(orderedCone) {
        print("Your \(orderedCone.flavor) with \(orderedCone.topping ?? "") is a price.")
            }
    return orderedCone
        }

let flavor1 = Flavor(name: "Vanilla", rating: 5.0)
let flavor2 = Flavor(name: "Chocolate", rating: 3.5)
let flavor3 = Flavor(name: "Mint", rating: 4.0)

let sizeArray = [Size.small, Size.medium, Size.large]

let toppingArray = ["Sprinkles", "Whipped Cream", "Hot Fudge"]

let ianIceCreamShop = IceCreamShop(flavors: [flavor1, flavor2, flavor3], sizes: sizeArray, toppings: toppingArray, totalSales: 3.99)

ianIceCreamShop.listTopFlavors()

let ianCone = Cone(flavor: "Rocky Road", topping: "Whipped Cream", size: "Large")

orderCone(orderedCone: ianCone)

ianCone.eat()
