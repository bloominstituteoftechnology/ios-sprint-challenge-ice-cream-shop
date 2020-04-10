import UIKit

struct Flavor {
    let name: String
    let rating: Int
}

enum Size: Double {
    case small = 1.89
    case medium = 2.50
    case large = 3.19
}

enum Topping: String {
    case nuts
    case hotFudge
    case sprinkles
}

struct Cone {
    let flavor: String
    let topping: [Topping]?
    let size: Size
    
    func eat() {
        print("wow.this is really good \(self.flavor) gelato.")
    }
}

let ice = Cone(flavor: "mango", topping: nil, size: .medium)
ice.eat()
