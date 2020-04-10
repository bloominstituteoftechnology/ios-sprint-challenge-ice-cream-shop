

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
func orderCone(flavor: Flavor, topping: String, size: Size) -> Cone? {
        switch flavor.name {
        case "Gandalf Grape", "Frodo Froyo", "Sauron Sour", "Orc Orange":
            let newCone = Cone(flavor: flavor, size: size, topping: topping)
            
            totalSales = newCone.size.rawValue
            
            let newString = "Your \(newCone.flavor.name) ice cream with \(newCone.topping) will be \(newCone.size)"
            
            return newCone
        default:
            print("We dont have that on our menu, we sincerly apologize")
            break
        }
        return nil
    }
}


