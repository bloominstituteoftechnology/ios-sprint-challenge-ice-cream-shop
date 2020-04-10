

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
    func orderCone(flavor: Flavor, topping: String?, size: Size) -> Cone? {
        let customersCone: Cone? = Cone(flavor: flavor, size: size, topping: topping ?? "")
    if let unwrappedCone = customersCone {
        if unwrappedCone.topping != "" {
            self.totalSales += unwrappedCone.size.rawValue
            print("Your \(unwrappedCone.flavor.name) ice cream with \(unwrappedCone.topping) is \(unwrappedCone.size.rawValue).")
        }
        else {
            self.totalSales += unwrappedCone.size.rawValue
            print("Your \(unwrappedCone.flavor.name) ice cream is \(unwrappedCone.size.rawValue).")
        }
        return unwrappedCone
        }
    }
}
let cones = [
           Cone(flavor: Flavor(name: "Sauron Sour", rating: 5), size: .medium, topping: "Brownies"),
           Cone(flavor: Flavor(name: "Orc Orange", rating: 5), size: .small, topping: "Nuts"),
           Cone(flavor: Flavor(name: "Gandalf The Grape", rating: 5), size: .large, topping: "Oreos"),
           Cone(flavor: Flavor(name: "Frodo Froyo", rating: 5), size: .large, topping: "Longbottom Leaf")
]

let iceCreamShop = IceCreamShop(menu: cones, totalSales: 0)

iceCreamShop.listTopFlavors()

let myCone = cones[1]
let mySecondBreakfast = cones[2]
let myElevensies = Cone(flavor: Flavor(name: "Frodo Froyo", rating: 5), size: .large, topping: "Longbottom Leaf")

iceCreamShop.orderCone(flavor: myCone.flavor, topping: myCone.topping, size: myCone.size)
iceCreamShop.orderCone(flavor: mySecondBreakfast.flavor, topping: mySecondBreakfast.topping, size: mySecondBreakfast.size)
iceCreamShop.orderCone(flavor: myElevensies.flavor, topping: myElevensies.topping, size: myElevensies.size)

myCone.eat()
iceCreamShop.totalSales
print(iceCreamShop.totalSales)
