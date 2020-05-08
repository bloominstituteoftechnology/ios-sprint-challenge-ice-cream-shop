import UIKit

struct Flavor {
    
    let name: String
    let rating: Double
   
}

enum Size: Double {
    
    case small = 0.25
    case medium = 0.50
    case large = 0.75
    
}

struct Cone {
    
    let flavor: Flavor
    let topping: String
    let size: Size
    
    func eat() {
        print("Yummy! \(flavor.name) is so good!")
    }
    
}

