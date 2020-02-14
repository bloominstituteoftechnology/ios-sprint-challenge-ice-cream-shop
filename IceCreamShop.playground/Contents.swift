
struct Flavor {
    let name: String
    var rating: Double
}

enum Size: Double {
    case small = 8.0
    case medium = 16.0
    case large = 32.0
}

struct Cone {
    let flavor: String
    let topping: String? // optional for cone
    let size: Size
}

class IceCreamShop {
    
    let flavors: [String] = [Flavor.name = "String","Chocolate","Strawberry"]
    var sizes: [Size] = [.small, .medium, .large]
    var toppings: [String] = ["Sprinkles", "Gummy Bears", "Nuts"]
    let totalSales: Double
    
    init(totalSales: Double, sizes: [Size], toppings: [String]) {
        self.totalSales = totalSales
        self.sizes = sizes
        self.toppings = toppings
    }
}

var coneString: String = ""

var iceCreamShop: IceCreamShop = IceCreamShop(flavors: [String], sizes: [Size], toppings: [String], totalSales: Double)

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


eat()

orderCone(cone: Cone(flavor: "Vanilla", topping: "Sprinkles", size: .large))
print(coneString)

listTopFlavors()
