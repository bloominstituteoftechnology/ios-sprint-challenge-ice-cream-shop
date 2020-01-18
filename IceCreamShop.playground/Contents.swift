
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
    var flavors: [Flavor]
    let size: Size
    var toppings: String?
    var totalSales: Double
    
    init(name: String, rating: Double) {
        self.flavors = []
      
    }
}

var chocolate = Flavor(name: "Coocoo Chocolate", rating: 4.2)
var vanilla = Flavor(name: "Milla Vanilla", rating: 3.8)
var strawberry = Flavor(name: "Strawberry Shorts", rating: 4.6)
var cottonCandy = Flavor(name: "Circus Candy", rating: 3.6)
var pastachio = Flavor(name: "Pastachio Disguisey", rating: 5.0)

var flavoroptions = IceCreamShop(name: "Coocoo Chocolate", rating: 4.2)

flavoroptions.flavors.append(vanilla)
flavoroptions.flavors.append(strawberry)
flavoroptions.flavors.append(cottonCandy)
flavoroptions.flavors.append(pastachio)


func listTopFlavors() {
    for ratings in flavoroptions {
        switch ratings.rating {
    case 4.0 ... 5.0:
        print("Our top flavors are \(flavors)")
        }
    }
}

listTopFlavors()

func orderCone(flavor: String, topping: String?, size: String) -> String? {
    
}

