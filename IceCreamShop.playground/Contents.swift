// Sprint Challenge: Swift Fundamentals - Ice Cream Shop
// August Oliver
// May 8th, 2020


import Foundation

struct Flavor {
    var name: String
    var rating: String
}

enum Size: Double {
    case small
    case medium
    case large
}

struct Cone {
    let flavor: Flavor
    let topping: String
    let size: Size
    
    func eat() {
        print("Mmm! I love \(flavor)!")
    }
}

