import UIKit

struct Flavor {
    let name: String
    let rating: Int
}

enum Size: Double {
    case small = 1.99
    case medium = 2.99
    case large = 3.99
}

struct cone {
    let flavor: Flavor
    let topping: String
    let size: Size
    
    func eat() {
        print("MMM! I love \(self.flavor)")
    }
}

class IceCreamShop {
    var flavors: [String]
    var toppings: [String]
    var sizes: [Size]
    
    init () {
        self.flavors = ["Strawberry", "Chocolate", "Vanilla"]
        self.toppings = ["Sprinkles", "Chocolate Chips"]
        self.sizes = [Size.small, Size.medium, Size.large]
    }
}
