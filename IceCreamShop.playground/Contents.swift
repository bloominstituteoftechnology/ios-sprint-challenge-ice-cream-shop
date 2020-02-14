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
    var toppings: [String]
    let totalSales: Double
    var flavorNameRate = (String, Double)
    var flavors = [flavorNameRate]
    
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

//func orderCone(cone: Cone?) -> Cone {
//
//    if let unwrappedCone = cone {
//        coneString += "Flavor: \(unwrappedCone.flavor)"
//    }
//
//    if let unwrappedConeTopping = cone {
//        coneString += " Topping: \(unwrappedConeTopping.topping)"
//    }
//    if let unWrappedConeSize = cone {
//        coneString += " Size: \(unWrappedConeSize.size)"
//    }
//    return cone
//}

let iceCreamShop: IceCreamShop = IceCreamShop(cone: Cone, sizes: Size,
                                              toppings: ["Gummy Bears", "Sprinkles", "Nuts"],
                                              totalSales: 0.0,
                                              flavors: [(name: "Vanilla", rate: 3.0), (name: "Chocolate", rate: 4.0), (name: "Strawberry", rate: 5.0)])

func listTopFlavors() {
    
    let flavors = iceCreamShop.flavors
    
    for flavor in flavors {
        var flavorsString = flavor.name
        flavorsString += " \(flavor)"
        print("Our top flavors are: " + flavorsString)
    }
}

listTopFlavors()
