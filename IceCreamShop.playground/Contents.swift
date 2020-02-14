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
    var topping: [String]?
    var size: Size
    
    func eat() {
        print("MMM! I love \(self.flavor).")
    }
}

class IceCreamShop {
    var menuItem: [String]
    var menuFlavors: [Flavor]
    var menuTopping: [String]
    var menuSize: [Size]
    var totalSales: Double
    
    init(menuItem: [String], menuFlavors: [Flavor], menuTopping: [String], menuSize: [Size], totalSales: Double = 0.00) {
        self.menuItem = menuItem
        self.menuFlavors = menuFlavors
        self.menuTopping = menuTopping
        self.menuSize = menuSize
        self.totalSales = totalSales
    }
    
    func listTopFlavors () {
        var topFlavor: [String] = []
        for flavors in menuFlavors {
            if flavors.rating > 4.0 {
                topFlavor.append(flavors.name)
            }
        }
        print(topFlavor)
    }
    
    func orderCone (flavor: Flavor, toppings: [String]?, size: Size) -> Cone? {
        let ordered = Cone(flavor: [flavor], topping: toppings, size: size)
        totalSales += ordered.size.rawValue
        if let actualTopping: [String] = ordered.topping {
            print("Your order of \(ordered.size) size \(ordered.flavor) cone with \(actualTopping) topping will be \(totalSales) dollars.")
        } else {
            print("Your order of \(ordered.size) size \(ordered.flavor) cone with no topping will be \(totalSales) dollars.")
        }
        return ordered
    }
}


let myMeun = ["single ball","double ball","ice cream cookie"]
let myFlavor1 = Flavor(name: "strawberry", rating: 4.5)
let myFlavor2 = Flavor(name: "mint", rating: 4.1)
let myFlavor3 = Flavor(name: "chocolate", rating: 4.9)
let myFlavor4 = Flavor(name: "lemon", rating: 3.9)
let myFlavor5 = Flavor(name: "orange", rating: 3.6)
var myFlavor:[Flavor] = []
myFlavor.append(contentsOf: [myFlavor1,myFlavor2,myFlavor3,myFlavor4,myFlavor5])
let myTopping1 = "chip"
let myTopping2 = "sprinkles"
let myTopping3 = "cherry"
let myTopping4 = "caramel syrup"
var myToppings: [String] = []
myToppings.append(contentsOf: [myTopping1,myTopping2,myTopping3,myTopping4])
let mySize: [Size] = [.small, .medium, .large]

let myIceCreamShop = IceCreamShop(menuItem: myMeun, menuFlavors: myFlavor, menuTopping: myToppings, menuSize: mySize)
