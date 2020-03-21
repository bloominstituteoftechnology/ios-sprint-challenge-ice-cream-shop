struct Flavor {
    var name: String
    var rating: Int
}

enum Size: Double {
    case small = 2.99
    case medium = 4.99
    case large = 5.99
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
        case "Oreo", "Reese Pieces", "Vanilla", "Chocolate", "Cookie Dough":
            let newCone = Cone(flavor: flavor, topping: topping, size: size)
            totalSales += newCone.size.rawValue
            let priceString = "Your \(newCone.flavor.name) ice cream with \(newCone.topping) will be\(newCone.size)"
            return newCone
        default:
            print("Sorry we don't have that ice cream on our menu")
            break
        }
        return nil
    }
    
}

let cones = [Cone(flavor: Flavor(name: "Oreo", rating: 10), topping: "Double Oreo", size: .large),
             Cone(flavor: Flavor(name: "Reese Pieces", rating: 9), topping: "Oreo", size: .medium),
             Cone(flavor: Flavor(name: "Vanilla", rating: 5), topping: "Sprinkles", size: .small)]



let myIceCreamShop = IceCreamShop(menu: cones, totalSales: 0)
myIceCreamShop.listTopFlavors()

let myCone = cones[0]
let otherCone = cones[2]
let myOtherCone = Cone(flavor: Flavor(name: "Reese Pieces", rating: 9), topping: "Oreo", size: .medium)

myIceCreamShop.orderCone(flavor: myCone.flavor, topping: myCone.topping, size: myCone.size)
myIceCreamShop.orderCone(flavor: otherCone.flavor, topping: otherCone.topping, size: otherCone.size)
myIceCreamShop.orderCone(flavor: myOtherCone.flavor, topping: myOtherCone.topping, size: myOtherCone.size)

myCone.eat()
otherCone.eat()
myOtherCone.eat()
myIceCreamShop.totalSales

print(myIceCreamShop.totalSales)
