
struct Flavor {
    var name: String
    var rating: Double
}

var chocolate = Flavor(name: "Coocoo Chocolate", rating: 4.2)
var vanilla = Flavor(name: "Milla Vanilla", rating: 3.8)
var strawberry = Flavor(name: "Strawberry Shorts", rating: 4.6)
var cottonCandy = Flavor(name: "Circus Candy", rating: 3.6)
var pastachio = Flavor(name: "Pastachio Disguisey", rating: 5.0)

enum Size: Double {
    case small = 3.99
    case medium = 5.50
    case large = 6.99
}

struct Cone {
    let flavor: String // Do these constants need to be specific?
    let topping: String?
    let size: Size
    
    func eat() {
        print("Mmm! I love \(flavor)!")
    }
}

class IceCreamShop { // Should these be arrays with all the options??
    var flavors: [Flavor]
    let size: Size
    var toppings: String?
    var totalSales: Double
    
    init(name: String, rating: Double) {
        self.flavors = []
        self.totalSales = totalSales // why is there an error here?
    }
}

var flavoroptions = IceCreamShop(name: "Coocoo Chocolate", rating: 4.2)

flavoroptions.flavors.append(vanilla)
flavoroptions.flavors.append(strawberry)
flavoroptions.flavors.append(cottonCandy)
flavoroptions.flavors.append(pastachio)

print(flavoroptions)

func listTopFlavors() {
    for ratings in Flavor {
        if ratings >= 4.0 {
        print("Our top flavors are \(name)") //Not sure how multiple flavors will be listed here
        }
    }
}

listTopFlavors()

func orderCone(flavor: String, topping: String?, size: String) -> String? {

 
}


