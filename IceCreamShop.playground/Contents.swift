enum Size: Double {
    case small = 3.99
    case medium = 5.99
    case large = 7.99
}


struct Flavor: Equatable {
    var name: String
    var rating: Double
    
    static func == (lhs: Flavor, rhs: Flavor) -> Bool {
        return lhs.name == rhs.name && lhs.rating == rhs.rating
    }
    
}

struct Cone {
    var flavor: Flavor
    var topping: [String]?
    var size: Size
    
    func eat() {
        print("MMM! I love \(self.flavor.name) flavor.")
    }
}

class IceCreamShop {
    var menuItem: [String]
    var menuFlavors: [Flavor]
    var menuToppings: [String]
    var menuSize: [Size]
    var totalSales: Double
    
    init(menuItem: [String], menuFlavors: [Flavor], menuToppings: [String], menuSize: [Size], totalSales: Double) {
        self.menuItem = menuItem
        self.menuFlavors = menuFlavors
        self.menuToppings = menuToppings
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
        //print(topFlavor)
        let noLast = [topFlavor.removeLast()]
        print("\(topFlavor) and \(noLast)")
    }
    
    func orderCone (yourCone : Cone) -> Cone? {
        guard menuFlavors.contains(yourCone.flavor) else {
            print("Please enter an avalible flavor.")
            return nil
        } // test flavor
        totalSales += yourCone.size.rawValue
        if let actualTopping: [String] = yourCone.topping {
            print("Your order of \(yourCone.size) size \(yourCone.flavor.name) cone with \(actualTopping) topping will be \(totalSales) dollars.")
        } else {
            print("Your order of \(yourCone.size) size \(yourCone.flavor.name) cone with no topping will be \(totalSales) dollars.")
        }
        return yourCone
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

let myIceCreamShop = IceCreamShop(menuItem: myMeun, menuFlavors: myFlavor, menuToppings: myToppings, menuSize: mySize, totalSales: 0.00)
myIceCreamShop.listTopFlavors()
print(" ")

let myCone = Cone(flavor: myFlavor1, topping: nil, size:.medium)
myCone.eat()
print(" ")
myIceCreamShop.orderCone(yourCone: myCone)
print("")
//myIceCreamShop.orderCone(yourCone: Cone(flavor: Flavor(name: "123", rating: 4.4), topping: nil, size: .large)) test my flavor
print(myIceCreamShop.totalSales)
