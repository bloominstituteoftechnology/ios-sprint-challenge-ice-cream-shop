struct Flavor {
    var name: String
    var rating: Int
}

enum Size: Double {
    case small = 3.99
    case medium = 5.99
    case large = 6.99
}

struct Cone {
    let flavor: Flavor
    let topping: String
    let size: Size
    
    func eat() {
        print("Mmmm I love \(flavor.name)")
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
        var awesomeFlavors = [String]()
        var topFlavorString = ""
        
        for icecream in menu {
            if icecream.flavor.rating > 4 {
                awesomeFlavors.append(icecream.flavor.name)
                topFlavorString = "Our top flavors are \(awesomeFlavors.joined(separator: ", "))"
            } else {
                print("We only carry the worlds best Ice Cream here!!!")
            }
        }
        print(topFlavorString)
    }
    func orderCone(flavor: Flavor, topping: String, size: Size) -> Cone? {
        switch flavor.name {
        case "Oreo", "Reese Pices", "Vanilla", "Chocolate", "Cookie Dough":
            let newCone = Cone(flavor: flavor, topping: topping, size: size)
            totalSales = newCone.size.rawValue
            let priceString = "Your \(newCone.flavor.name) ice cream with \(newCone.topping) will be\(newCone.size)"
            return newCone
        default:
            print("Sorry we don't have that ice cream on our menu")
            break
        }
        return nil
    }
    
}

let cones = [
            



]
