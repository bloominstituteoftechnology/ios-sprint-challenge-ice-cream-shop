
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
    
    let Cone: Cone
    let flavors = ["Vanilla", "Chocolate", "Strawberry"]
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

func eat() {
    print("Mmm!  I love \(cone.flavor) flavor!")
}

func orderCone(cone: Cone) {
    
    coneString += "Flavor: \(cone.flavor)"
    
    if let coneTopping = cone.topping {
        coneString += " Topping: \(coneTopping)"
    }
    
    coneString += " Size: \(cone.size)"
    
    return cone
}


func listTopFlavors() {
    
    let flavors = iceCreamShop.flavors
    
    for flavor in flavors {
        var flavorsString = ""
            flavorsString += " \(flavor)"
        print(flavorsString)
    }
}

listTopFlavors()

eat()
