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
    var totalSales: Double
    
    init(flavors: [Flavor], sizes: [Size], toppings: [String], totalSales: Double) {
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
        self.totalSales = totalSales
    }
    
    func listTopFlavors() {
        var topFlavors = String()
        
        for flavor in flavors {
            if flavor.rating > 4.0 {
                topFlavors.append(flavor.name)
            }
        }
        
        print("Our top flavors are \(topFlavors)")
    }
    
    func orderCone(flavor: Flavor, topping: String?, size: Size) -> Cone? {
        let cone = Cone(flavor: flavor, topping: topping, size: size)
        totalSales = cone.size.rawValue
        
        if let topping = topping {
            print("Your \(flavor) ice cream with \(topping) is \(totalSales)")
        } else {
            print("Your \(flavor) ice cream is \(totalSales)")
        }
        
        return cone
    }
}



