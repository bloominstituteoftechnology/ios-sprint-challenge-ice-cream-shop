struct Flavor {
    let name: String
    let rating: Double
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
        print("Mmm! I love \(flavor)")
    }
}

class IceCreamShop {
    var flavors: [Flavor]
    var sizes: [Size]
    var toppings: [String]
    var totalSales: Int
    
    init(flavors: [Flavor], sizes: [Size], toppings: [String], totalSales: Int) {
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
        self.totalSales = totalSales
    }
    
    func listTopFlavors() {
        var topFlavors: [String] = []
        for flavor in flavors {
            if flavor.rating >= 4.0 {
                topFlavors.append(flavor.name)
            }
        }
        print("Our top flavors are: \(topFlavors)")
    }
}


