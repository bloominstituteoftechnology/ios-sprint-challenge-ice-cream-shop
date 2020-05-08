// Sprint Challenge: Swift Fundamentals - Ice Cream Shop
// August Oliver
// May 8th, 2020


import Foundation

struct Flavor {
    
    enum icecreamFlavor {
        case chocolate
        case vanilla
        case strawberry
    }
    var rating: String
}

var flavor: Flavor.icecreamFlavor

enum Size: Double {
    case small
    case medium
    case large
}

struct Cone {
    let flavor: Flavor.icecreamFlavor
    
    let topping: String
    let size: Size
    
    func eat() {
        print("Mmm! I love \(flavor)!")
    }
}

class IceCreamShop {
    var flavor: Flavor.icecreamFlavor
    var size: Size
    var toppings: String
    var totalSales: Double // keep track of how much money it was made

    init(flavor: Flavor.icecreamFlavor, size: Size, toppings: String, totalSales: Double) {
        self.flavor = flavor
        self.size = size
        self.toppings = toppings
        self.totalSales = totalSales
    }
}
