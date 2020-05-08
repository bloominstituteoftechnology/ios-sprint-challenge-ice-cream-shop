// #1

struct Flavor {
    let name: String
    var rating: Int?
}

// #2

enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}

// #3

struct Cone {
    let flavor: Flavor
    let topping: String
    let size: Size
}

// #4

class IceCreamShop {
    var menuFlavors: [Flavor]
    var menuSizes: [Size]
    var menuToppings: [String]
    var totalSales: Double
    
    init(menuFlavors: [Flavor], menuSizes: [Size], menuToppings: [String]) {
        self.menuFlavors = menuFlavors
        self.menuSizes = menuSizes
        self.menuToppings = menuToppings
        self.totalSales = 0.0
    }
}
