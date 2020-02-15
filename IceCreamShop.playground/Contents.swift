struct Flavor {
    var name: String
    var rating: Double
}

enum Size: Double {
    case small = 3.99
    case medium = 5.99
    case large = 8.99
}

enum Toppings {
    case gummybears
    case sprinkles
    case nuts
}

struct Cone {
    var flavor: String
    let size: Size
    let toppings: Toppings
}

class IceCreamShop {
    
    let cone: Cone
    let sizes: Size
    var toppings: Toppings
    let totalSales: Double
    var flavorArray: [Flavor]
    
    init(cone: Cone, sizes: Size, toppings: Toppings, totalSales: Double, flavorArray: [Flavor]) {
        self.cone = cone
        self.sizes = sizes
        self.toppings = toppings
        self.totalSales = totalSales
        self.flavorArray = flavorArray
    }
    func eat() {
        print("Mmm!  I love \(cone.flavor) flavor!")
    }
}

var coneString: String = ""

func orderCone(cone: Cone?) -> String {
        
    if let unwrappedCone = cone {
        coneString += "Flavor: \(unwrappedCone.flavor)"
    }
    
    if let unwrappedConeTopping = cone {
        coneString += " Topping: \(unwrappedConeTopping.toppings)"
    }
    if let unWrappedConeSize = cone {
        coneString += " Size: \(unWrappedConeSize.size)"
    }
    
    return coneString
}

var flavorVan = Flavor(name: "Vanilla", rating: 3.0)
var flavorChoc = Flavor(name: "Chocolate", rating: 4.0)
var flavorStraw = Flavor(name: "Strawberry", rating: 5.0)

var myFlavorsArray: [Flavor] = []

myFlavorsArray.append(flavorVan)
myFlavorsArray.append(flavorChoc)
myFlavorsArray.append(flavorStraw)

var cone1: Cone = Cone(flavor: flavorStraw.name, size: .medium, toppings: .gummybears)

let myIceCreamShop: IceCreamShop = IceCreamShop(cone: cone1, sizes: .medium, toppings: .nuts, totalSales: 0.0, flavorArray: myFlavorsArray)

func listTopFlavors(iceCreamShop: IceCreamShop) {
    
    for flavor in iceCreamShop.flavorArray {
        var flavorsString = flavor.name
        var flavorRating = flavor.rating
        if(flavor.rating >= 4.0) {
            print("Our top flavors are: " + flavorsString)
        }
    }
}

listTopFlavors(iceCreamShop: myIceCreamShop)

print(orderCone(cone: cone1))
