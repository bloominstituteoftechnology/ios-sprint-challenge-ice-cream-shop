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
    var flavor: String
    let topping: String
    let size: Size
}

class IceCreamShop {
    
    let cone: Cone
    let sizes: Size
    let toppings = ["Gummy Bears", "Sprinkles", "Nuts"]
    let totalSales: Double
    let flavors = [("Vanilla", 3.0), ("Chocolate", 4.0), ("Strawberry", 5.0)]
    
    init(cone: Cone, sizes: Size, toppings: [String], totalSales: Double, flavors: [(String, Double)]) {
        self.cone = cone
        self.sizes = sizes
        self.toppings = toppings
        self.totalSales = totalSales
        self.flavors = flavors
    }
    func eat() {
        print("Mmm!  I love \(cone.flavor) flavor!")
    }
}

var coneString: String = ""

func orderCone(cone: Cone?) {
    
    if let unwrappedCone = cone {
        coneString += "Flavor: \(unwrappedCone.flavor)"
    }
    
    if let unwrappedConeTopping = cone {
        coneString += " Topping: \(unwrappedConeTopping.topping)"
    }
    if let unWrappedConeSize = cone {
        coneString += " Size: \(unWrappedConeSize.size)"
    }
    return cone
}

let iceCreamShop: IceCreamShop

func listTopFlavors() {
    
    let flavors = iceCreamShop.flavors
    
    for flavor in flavors {
        var flavorsString = ""
        flavorsString += " \(flavor)"
        print(flavorsString)
    }
}

listTopFlavors()


iceCreamShop.eat()
