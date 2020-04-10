

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
    let flavor: Flavor
    let size: Size
    let topping: String
    
    func eat() {
        print("Mmm! I love \(flavor.name)")
    }
}

class IceCreamShop {
    var menu: [Cone] = []
    var totalSales: Double
    
    init(menu: [Cone], totalSales: Double) {
        self.menu = menu
        self.totalSales = totalSales
    }
func listTopFlavors() {
    var greatFlavors = [String]()
    var topFlavorString = ""
    
    for icecream in menu {
        if icecream.flavor.rating > 4 {
            greatFlavors.append(icecream.flavor.name)
            topFlavorString = "Our top flavors are \(greatFlavors.joined(separator: ", "))"
        } else {
            print("Sorry we only carry the best Ice Cream here")
        }
    }
    print(topFlavorString)
    }
}
func orderCone(

