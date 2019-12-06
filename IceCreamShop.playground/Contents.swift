// Tobi Tselios

enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}

struct Flavor {
    var name: String
    var rating: Int
}

struct Cone {
    let flavor: Flavor
    let topping: String
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
    
}
