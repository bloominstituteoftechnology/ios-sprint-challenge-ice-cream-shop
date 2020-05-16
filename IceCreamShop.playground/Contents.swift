
import UIKit

struct Flavor {
    var name: String
    var rating: Int
}

let vanilla = Flavor(name: "Vanilla", rating: 2)
let mint = Flavor(name: "Mint", rating: 4)
let chocolate = Flavor(name: "Chocolate", rating: 1)

let toppings = ["sprinkles", "cookies", "gummie bears"]

enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}
 
struct Cone {
    var flavors = [vanilla, mint, chocolate]
    var toppings: [String] = ["sprinkles", "cookie crumbs", "hot fudge"]
    var size: Size
}


func eat() {
    print("Mmm! I love \(vanilla.name)")
}
eat()



class IceCreamShop {
    var menu: Cone
    var totalSales: Double
    
    init(eMenu: Cone, eTotalSales: Double) {
    self.menu = eMenu
        self.totalSales = eTotalSales
    }
    
}

