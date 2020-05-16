
import UIKit

struct Flavor {
    var name: String
    var rating: Int
}

let vanilla = Flavor(name: "Vanilla", rating: 2)
let mint = Flavor(name: "Mint", rating: 4)
let chocolate = Flavor(name: "Chocolate", rating: 1)

let flavors = [vanilla, mint, chocolate]

let toppings = ["sprinkles", "cookies", "gummie bears"]

enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}
 
struct Cone {
    var flavor: Flavor
    var topping: [String] = ["sprinkles", "cookie crumbs", "hot fudge"]
    var size: Size
}


func eat() {
    print("Mmm! I love \(vanilla.name)")
}
eat()



class IceCreamShop {
    var orders: Cone
    var totalSales: Double
    
    init(eOrder: Cone, eTotalSales: Double ) {
        self.orders = eOrder
        self.totalSales = eTotalSales
    }
}

func listTopFlavors() {
    
    
    
    
}
