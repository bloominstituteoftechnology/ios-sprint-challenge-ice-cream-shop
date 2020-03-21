import UIKit

struct Flavor {
    var name: String
    var rating: Double
}

enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}

struct Cone {
    var flavores: Flavor
    var topping: String
    var size: Size
    
   
    func eat() {
        
        print("Wow! I love \(flavores.name)")
        
    }
}

class IceCreamShop {
    var menu: [Cone]
    
    init() {
        self.menu = []
    }
    
    }

var totalSale = 0
var shopMenu = IceCreamShop()
shopMenu.menu.append(Cone(flavores: Flavor(name: "Vanilla", rating: 4.33), topping: "Whipped Cream", size: .small))
shopMenu.menu.append(Cone(flavores: Flavor(name: "Chocolate", rating: 4.6), topping: "Chocolate Chip", size: .medium))
shopMenu.menu.append(Cone(flavores: Flavor(name: "Cheesecake", rating: 3), topping: "Caramel", size: .large))
shopMenu.menu.append(Cone(flavores: Flavor(name: "Half Vanilla Half Chocolate", rating: 5.0), topping: "Chocolate Syrop", size: .large))

func listOfTopFlavors() {
    for topFlavors in shopMenu.menu {
        if topFlavors.flavores.rating >= 4 {
        print("Our top flavors are \(topFlavors.flavores.name)")
        }
    }
}

listOfTopFlavors()


func orderCone(flavor: Flavor, size: Size, topping: String) -> Cone? {
   
    var order: Cone
    order.flavores = 
    order.size = size
    order.topping = topping
}


