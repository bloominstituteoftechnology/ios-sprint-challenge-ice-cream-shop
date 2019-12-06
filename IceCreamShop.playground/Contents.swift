// Tobi Tselios

enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}

struct Flavor {
    var name: String
    var rating: Double
}

struct Cone {
    let flavor: Flavor
    let topping: String?
    let size: Size
    
    func eat() {
        print("Mmm! I love this \(flavor) cone.")
    }
}

class IceCreamShop {
    var flavors: [Flavor]
    var sizes: [Size]
    var toppings: [String]
    var totalSales: Double?
    
    init(flavors: [Flavor], sizes: [Size], toppings: [String]) {
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
    }
    
    func listTopFlavors() {
        var topFlavors = String()
        
        for flavor in flavors {
            if flavor.rating > 4.0 {
                topFlavors.append("\(flavor.name)\n")
            }
        }
        
        print("Our top flavors are:\n\n\(topFlavors)")
    }
    
    func orderCone(flavor: Flavor, topping: String?, size: Size) -> Cone? {
        let cone = Cone(flavor: flavor, topping: topping, size: size)
        totalSales = cone.size.rawValue
        
        if let topping = topping,
            let price = totalSales {
            print("Your \(flavor) ice cream with \(topping) is \(price)")
        } else if let price = totalSales {
            print("Your \(flavor) ice cream is \(price)")
        }
        
        return cone
    }
}

let vanillaFlavor = Flavor(name: "vanilla", rating: 4.3)
let chocolateFlavor = Flavor(name: "chocolate", rating: 3.9)
let cookieDoughFlavor = Flavor(name: "cookie dough", rating: 4.9)
let mintFlavor = Flavor(name: "mint", rating: 2.4)
let neopolitanFlavor = Flavor(name: "neopolitan", rating: 3.0)

let sizes: [Size] = [.small, .medium, .large]

let toppings: [String] = ["brownie bits", "whipped cream", "oreo", "chocolate syrup", "caramel syrup", "chocolate chips"]

let iceCreamShop = IceCreamShop(flavors: [vanillaFlavor, chocolateFlavor, cookieDoughFlavor, mintFlavor, neopolitanFlavor], sizes: sizes, toppings: toppings)
iceCreamShop.listTopFlavors()
