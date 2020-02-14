
struct Flavor {
    let name: String
    var rating: Double
}

enum Size: Double {
    case small = 3.99
    case medium = 5.99
    case large = 8.99
}

struct Cone {
    let flavor: [Flavor]
    let topping: String? // optional for cone
    let size: Size
}

class IceCreamShop {
    
    var size: Size
    var toppings: String
    let totalSales: Double
    let flavors: Flavor
    
    init(sizes: Size, toppings: String, totalSales: Double, flavors: Flavor) {
        self.size = size
        self.toppings = toppings
        self.totalSales = totalSales
        self.flavors = flavors
    }
}

var coneString: String = ""

let cone = Cone(flavor: "Vanilla", topping: "Sprinkles", size: Size.medium)

func eat() {
    print("Mmm!  I love \(cone.flavor) flavor!")
}

func orderCone(cone: Cone) {
    
    coneString += "Flavor: \(cone.flavor)"
    
    if let coneTopping = cone.topping {
        coneString += " Topping: \(coneTopping)"
    }
    
    coneString += " Size: \(cone.size)"
    //return cone
}


func listTopFlavors() {
    
    let flavors = iceCreamShop.flavors
    
    for flavor in flavors {
        var flavorsString = ""
            flavorsString += " \(flavor)"
        print(flavorsString)
    }
}


orderCone(cone: Cone(flavor: "Vanilla", topping: "Sprinkles", size: .large))
print(coneString)

listTopFlavors()

var flavors = [("Vanilla", 3.0),("Chocolate", 3.0),("Strawberry", 5.0)]

var iceCreamShop: IceCreamShop = IceCreamShop(flavor: [Flavor], sizes: [Size], toppings: [String], totalSales: Double)

eat()
