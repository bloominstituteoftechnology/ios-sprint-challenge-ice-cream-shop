enum Size: Double {
    case small = 3.99
    case medium = 5.99
    case large = 7.99
}


struct Flavor {
    var name: String
    var rating: Double
}

struct Cone {
    var flavor: [Flavor]
    var topping: String
    var size: Size
    
    func eat() {
        print("MMM! I love \(self.flavor).")
    }
}

class IceCreamShop {
    var menuItem: [String]
    var menuType: Cone
    var totalSales: Double
    
    init(menuItem: [String], menuType: Cone, totalSales: Double) {
        self.menuItem = menuItem
        self.menuType = menuType
        self.totalSales = totalSales
    }
    func listTopFlavors () {
        var topFlavor: [String] = []
        for flavors in menuType.flavor {
            if flavors.rating > 4.0 {
                topFlavor.append(flavors.name)
            }
        print(topFlavor)
        }
    }
}

