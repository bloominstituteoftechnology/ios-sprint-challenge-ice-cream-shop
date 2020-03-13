import UIKit

struct Flavor {
    let name: String
    let rating: Double
}

enum Size: Double {
    case small = 1.89
    case medium = 2.50
    case large = 3.19
}

struct Cone {
    let flavor: String
    let topping: [String]?
    let size: Size
    
    func eat() {
        print("wow. this is really good \(self.flavor) gelato.")
    }
}
let yum = Flavor(name: "lemon", rating: 3.05)
let twoScoops = Size.medium
var double = Cone(flavor: "lemon", topping: nil, size: twoScoops)
double.eat()
