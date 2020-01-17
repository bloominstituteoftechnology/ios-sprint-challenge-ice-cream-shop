import UIKit

enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}
struct Flavor {
    var name: String
    let rating: Int
    
}
struct Cone {
    var flavor: String
    let topping: String
    let size: Size
    
}
func eat() {
    print("Mmm! I love \(Cone.init(flavor: "Vinella", topping: "Sprinkles", size: .large))")
}

class IceCreamShop {
    var flavors: String
    var sizes: Size
    var toppings: String
    var totalSales: Double
    init(flavors: String, sizes: Size, toppings: String, totalSales: Double) {
        self.flavors = flavors
        self.sizes = Size
        self.toppings = toppings
        self.totalSales = totalSales
    }
}
