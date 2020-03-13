
import UIKit

//Enums
enum Flavors: String {
    case Orange_Sherbet = "Orange Sherbet"
    case Vanilla = "Vanilla"
    case Chocolate = "Chocolate"
    case Superman = "Superman"
}

enum Sizes: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}

enum Toppings: String {
    case Sprinkles = "Sprinkles"
    case MandMs = "M&M's"
    case Strawberrys = "Strawberrys"
}


//Structs
struct Flavor {
    var name: Flavors
    var rating: Int
}

struct Cone {
    let flavor: Flavor
    let topping: Toppings
    let size: Sizes
    
    func eat() {
        print("This \(flavor.name.rawValue) is really good!")
    }
}

//Classes
class IceCreamShop {
    
}

/* let cone = Cone(flavor: .init(name: .Vanilla, rating: 4), topping: .Strawberrys, size: .medium) */


