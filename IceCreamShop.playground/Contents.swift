// Malik Barnes

enum Flavors: String {
     case chocolateChip = "Chocolate Chip"
     case mintChocolateChip = "Mint Chocolate Chip"
     case rainbowSherbet = "Rainbow Sherbet"
     case chocolateChipCookieDough = "Chocolate Chip Cookie Dough"
     case vanilla = "Vanilla"
     case chocolate = "Chocolate"
     case strawberry = "Strawberry"
}

struct Flavor {
    var name: Flavors
    var rating: UInt
}

enum Size: Double {
    case small = 1.99
    case medium = 2.49
    case large = 2.99
}

enum Toppings: String {
    case sprinkles = "Sprinkles"
    case oreoCrumbles = "Oreo Crumbles"
    case hotFudge = "Hot Fudge"
    case caramel = "Caramel"
    case whippedCream = "Whipped Cream"
}

struct Cone {
    let flavor: Flavors
    let toppings: Toppings?
    let size: Size
    
    func eat() {
        print("Wow! I love \(self.flavor.rawValue)!")
    }
}

class IceCreamShop {
    var menu: Flavors
    var coneSize: Size
    var toppings: Toppings
    
    init(menu: Flavors, coneSize: Size, toppings: Toppings) {
        self.menu = menu
        self.coneSize = coneSize
        self.toppings = toppings
    }
}


var totalSales: Double = 0

func orderCone(_ cone: Cone) -> Cone? {
    let newCone = cone
    totalSales += cone.size.rawValue

    if let unwrappedTopping = newCone.toppings{
        print("Your \(newCone.flavor.rawValue) with \(unwrappedTopping.rawValue) is going to be \(cone.size.rawValue)")
    } else if newCone.toppings == nil {
        print("Your \(newCone.flavor.rawValue) cone is going to be \(newCone.size.rawValue)")
    }
    return newCone
}

let newCone = orderCone(Cone(flavor: .chocolateChipCookieDough, toppings: .hotFudge, size: .large))
newCone
