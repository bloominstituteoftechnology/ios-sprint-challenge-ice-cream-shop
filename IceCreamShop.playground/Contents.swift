
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
    let flavor: String
    let topping: String
    let size: Size
    
    func eat() {
        print("Mmm!  I love \(flavor) flavor!")
    }
}

class IceCreamShop {
    
    let Cone: Cone
    let flavors = [(flavor: "Vanilla", 3.0), (flavor: "Chocolate", 4.0), (flavor: "Strawberry", 5.0)]
    let sizes = Size
    let toppings = ["Gummy Bears", "Sprinkles", "Nuts"]
    let totalSales: Double
    
    init(size: Size, toppings: [String], totalSales: Double, flavors: [Flavor]) {
        self.size = size
        self.toppings = toppings
        self.totalSales = totalSales
        self.flavors = flavors
    }
}

var coneString: String = ""

func orderCone(cone: Cone) {
        
    if let Cone = Cone {
        
    }
    coneString += "Flavor: \(cone.flavor)"
    
    if let coneTopping = cone.topping {
        coneString += " Topping: \(coneTopping)"
    }
    
    coneString += " Size: \(cone.size)"
    
    //return cone
}

let iceCreamShop = IceCreamShop(size: Size, toppings: ["Gummy Bears", "Sprinkles", "Nuts"], totalSales: 0.0, flavors: ["Gummy Bears", "Sprinkles", "Nuts"])

func listTopFlavors() {
    
    let flavors = iceCreamShop.flavor
    
    for flavor in flavors {
        var flavorsString = ""
            flavorsString += " \(flavor)"
        print(flavorsString)
    }
}

listTopFlavors()

eat()
