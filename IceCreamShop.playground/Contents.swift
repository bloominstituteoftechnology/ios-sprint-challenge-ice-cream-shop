extension Cone {
    struct Flavor: Equatable {
    static func ==(lhs: Flavor, rhs: Flavor) {
        lhs.name == rhs.name
    }
        let name: String
        let rating: Double
    }
    enum Size: Double {
        case small = 3.99
        case medium = 5.99
        case large = 7.99
    }
}
struct Cone {
    let flavor: Flavor
    let toppings: [String]
    let size: Size
    func eat() {
        print("Mmm! I love \(flavor)!")
    }
}

extension IceCreamShop {
    struct Menu {
        var flavors: [Cone.Flavor]
        var toppings: [String]
        var sizes: [Cone.Size]
    }
}
class IceCreamShop {
    init(menu: Menu) {
        self.menu = menu
    }
    let menu: Menu
    func listTopFlavors() {
        var strings = [String]()
        for flavor in menu.flavors where flavor.rating >= 4.0 {
            strings.append(flavor.name)
        }
        if strings.isEmpty {
            print("Nobody seems to like any of our flavors.")
        } else if strings.count > 1 {
            for var string in strings {
                if string != strings.last {
                    string.append(", ")
                } else {
                    string = "and \(string)."
                }
            }
            print(strings.joined())
        }
    }
    func orderCone(flavor: Cone.Flavor, toppings: [String], size: Cone.Size) -> Cone? {
        guard menu.flavors.contains(flavor) else {
            print("Sorry, we don't have that flavor.")
            return nil
        }
        guard toppings.allSatisfy(menu.toppings.contains) else {
            let grammar = toppings.count > 1 ? "those toppings" : "that topping"
            print("Sorry, we don't have \(grammar).")
            return nil
        }
        guard menu.sizes.contains(size) else {
            print("Sorry we don't carry that size.")
            return nil
        }
        
        let price: Double = {
            let pricePerTopping = 0.5
            let toppingsPrice = pricePerTopping * Double(toppings.count)
            let priceOfSize = size.rawValue
            return toppingsPrice + priceOfSize
        }()
        
        totalSales += price
        return Cone(flavor: flavor, toppings: toppings, size: size)
    }
    var totalSales = 0.0
}

//let ics = IceCreamShop(:)
//ics.listTopFlavors
//let cone = ics.orderCone(:)
//cone.eat()    //without unwrapping
//print(ics.totalSales)  //increased
