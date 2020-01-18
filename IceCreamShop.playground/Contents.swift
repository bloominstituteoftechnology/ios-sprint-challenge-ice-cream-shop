
struct Flavor {
    var name: String
    var rating: Double
    
}


enum Size: Double {
    case small = 3.99
    case medium = 5.50
    case large = 6.99
    
}

struct Cone {
    let flavor: String
    let topping: String?
    let size: Size
    
    func eat() {
        print("Mmm! I love \(flavor)!")
    }
}

class IceCreamShop {
    let flavorOptions: [String]
    let size: Size
    var toppings: String?
    var totalSales: Double
    
    init(flavorOptions: String, size: Size, toppings: String, totalSales: Double) {
        self.flavorOptions = []
        self.size = size
        self.toppings = toppings
        self.totalSales = totalSales
    }
}

var coocooChocolate = 4.2
var millaVanilla = 3.8
var strawberryShorts = 4.6
var circusCandy = 3.6
var pastachioDisguisey = 5.0

let flavors: [Double] = [coocooChocolate, millaVanilla, strawberryShorts, circusCandy, pastachioDisguisey]

func listTopFlavors() {
    for ratings in flavors {
        switch ratings {
        case 4.0 ... 5.0:
            print("Our top flavors are \(flavors)")
        default:
            continue
        }
    }
}

listTopFlavors()

func orderCone(flavor: String, topping: String?, size: String) -> String? {
    
}

