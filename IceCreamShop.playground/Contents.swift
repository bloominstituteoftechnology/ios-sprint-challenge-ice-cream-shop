import Foundation

struct Flavor {
    let name: String
    var rating: Double
}

enum Size: Double {
    case small = 2.99
    case medium = 4.99
    case large = 7.99
}

struct Cone {
    let flavor: Flavor
    let topping: String
    let size: Size
    
    var fullName: String {
        "\(flavor.name) ice cream cone \(!topping.isEmpty ? "with " + topping : "")"
    }
    
    func eat() {
        print("This \(fullName), was delicious!")
    }
}

class IceCreamShop {
    let flavors: [Flavor]
    let toppings: [String]
    let sizes: [Size]
    
    var totalSales: Double = 0.0
    
    init(flavors: [Flavor], toppings: [String], sizes: [Size]) {
        self.flavors = flavors
        self.toppings = toppings
        self.sizes = sizes
    }
}
