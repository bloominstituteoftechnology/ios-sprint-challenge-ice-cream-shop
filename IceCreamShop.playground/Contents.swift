

struct Flavor{
    var name : String
    var rating: Int
}

enum Size: Double{
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}

struct Cone{
    var flavor: Flavor
    var topping: String
    var size: Size
}

class IceCreamShop{
    var menuFlavors: [Flavor]
    var menuToppings: [String]
    var totalSales: Double
    
    init(menuFlavors: [Flavor], menuToppings: [String]){
        self.menuFlavors = menuFlavors
        self.menuToppings = menuToppings
        self.totalSales = 0.0
    }
    
}
