
struct Flavor {
    var name: String
    var rating: Double
}

enum Size: Double {
    case small = 3.99
    case medium = 4.75
    case large = 5.50
}

struct Cone {
    let flavor: String
    let topping: String?
    let size: String
    
    func eat() {
        print("Mmm! I love \(flavor)")
    }
}

class IceCreamShop {
    let flavors: [String]
    let sizes: [String]
    let toppings: [String]
    var totalSales: Double
    
    init(flavors: [String], sizes: [String], toppings: [String], totalSales: Double) {
        self.flavors = []
        self.sizes = []
        self.toppings = []
        self.totalSales = totalSales
    }
}

func listTopFlavors() {
    
}
