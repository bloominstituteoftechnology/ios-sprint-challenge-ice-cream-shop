import Foundation

enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}
struct Flavor {
    var name: String
    let rating: Double
    
}
struct Cone {
    var flavor: Flavor
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
    var totalSales: Double
    
    
    
    init(flavors: [Flavor], sizes: [Size], toppings: [String], totalSales: Double) {
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
        self.totalSales = totalSales
    }
    func listTopFlavors() {
        for flavor in flavors {
            if flavor.rating > 4.0 {
                print("Our top flavors are \(flavor.name)")
            }
        }
    }
    
    func orderCone(flavor: Flavor, topping: String, size: Size) -> Cone? {
        let newCone = Cone(flavor: flavor, topping: topping, size: size)
        totalSales = newCone.size.rawValue
        if let totalSales = orderCone(flavor: , topping: "Sprinkles", size: Size.large) {
            print("Your \(flavor) ice cream with \(topping) is \(Size.large)") {
            } else do {
                print("You did not order anything")
            }
}
}
}
// STILL NEED TO PRINT!**

    // passing into means parameters





