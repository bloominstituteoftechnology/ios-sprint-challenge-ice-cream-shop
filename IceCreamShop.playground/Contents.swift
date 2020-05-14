// Ian Becker

struct Flavor {
    var name: String
    var rating: Double
}

enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}

struct Cone {
    let flavor: Flavor
    let topping: String
    let size: Size
    
    func eat() {
        print("My favorite flavor is \(flavor.name).")
    }
}

class IceCreamShop {
    var flavors: [Flavor]
    var sizes: [Size]
    var toppings: [String]
    var totalSales: Double
    
    init(flavors: [Flavor], sizes: [Size], toppings: [String], totalSales: Double) {
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
        self.totalSales = totalSales
        // We need the raw value of our size to add to our totalSales
        }
    func listTopFlavors() {
        for flavor in flavors {
            if flavor.rating >= 4.0 {
                print("One of our most popular flavors is \(flavor.name).")
            }
        }
    }
    func orderCone(flavor: Flavor, size: Size, topping: String) -> Cone? {
        let orderedCone = Cone(flavor: flavor, topping: topping, size: size)
        totalSales += orderedCone.size.rawValue
        if let unwrappedOrderedCone = Cone?(orderedCone) {
            print("Your \(unwrappedOrderedCone.flavor.name) ice cream with \(unwrappedOrderedCone.topping) is \(unwrappedOrderedCone.size.rawValue)")
        }
        
        
        return orderedCone
    }
}

let flavor1 = Flavor(name: "Vanilla", rating: 5.0)
let flavor2 = Flavor(name: "Chocolate", rating: 3.5)
let flavor3 = Flavor(name: "Mint", rating: 4.0)

let toppingArray = ["Sprinkles", "Whipped Cream", "Hot Fudge"]

let ianIceCreamShop = IceCreamShop(flavors: [flavor1, flavor2, flavor3], sizes: [.large, .medium, .small], toppings: toppingArray, totalSales: 0)

ianIceCreamShop.listTopFlavors()

let ianCone = Cone(flavor: .init(name: "Rocky Road", rating: 4.5), topping: "Hot Fudge", size: .large)

ianIceCreamShop.orderCone(flavor: flavor1, size: .medium, topping: "Sprinkles")

ianCone.eat()

print(ianIceCreamShop.totalSales)
