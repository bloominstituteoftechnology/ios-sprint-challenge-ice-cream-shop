// Sprint Challenge: Swift Fundamentals - Ice Cream Shop
// August Oliver
// May 8th, 2020


import Foundation

//struct Flavor {
//
//    enum icecreamFlavor {
//        case chocolate
//        case vanilla
//        case strawberry
//    }
//    var rating: String
//}
//
//var flavor: Flavor.icecreamFlavor
//
//enum Size: Double {
//    case small
//    case medium
//    case large
//}
//
//struct Cone {
//    let flavor: Flavor.icecreamFlavor
//
//    let topping: String
//    let size: Size
//
//    func eat() {
//        print("Mmm! I love \(flavor)!")
//    }
//}
//
//class IceCreamShop {
//    var flavor: Flavor.icecreamFlavor
//    var size: Size
//    var toppings: String
//    var totalSales: Double // keep track of how much money it was made
//
//    init(flavor: Flavor.icecreamFlavor, size: Size, toppings: String, totalSales: Double) {
//        self.flavor = flavor
//        self.size = size
//        self.toppings = toppings
//        self.totalSales = totalSales
//    }
//}
//
//func listTopFlavors() {
//
//}







struct Flavor {
    
    let strawberry: String
    let vanilla: String
    let chocolate: String
    let rating: Double
    
}

var flavor: Flavor

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
        print("Mmm! I love \(flavor.chocolate)!")
    }
}

class IceCreamShop {
    var flavor: Flavor
    var size: Size
    var toppings: String
    var totalSales: Double // keep track of how much money it was made

    init(flavor: Flavor, size: Size, toppings: String, totalSales: Double) {
        self.flavor = flavor
        self.size = size
        self.toppings = toppings
        self.totalSales = totalSales
    }
}


let ratingsArray = [straberry, chocolate, vanilla]

let straberry = 4.0
let chocolate = 5.0
let vanilla = 3.0


func listTopFlavors() {
    for ratings in ratingsArray {
        if ratings >= 4.0 {
            print("Our top flavors are: \(ratings)")
        }
    }
}

listTopFlavors()
