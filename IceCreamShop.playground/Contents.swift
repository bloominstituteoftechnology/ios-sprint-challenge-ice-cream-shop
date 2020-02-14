
struct Flavor {
    var name: String
    var rating: Double
}

enum Size: Double {
    case small = 3.99
    case medium = 4.75
    case large = 5.50
}

struct Cone {
    let flavor: Flavor
    let topping: String?
    let size: Size
    
    func eat() {
        print("Mmm! I love \(flavor)")
    }
}

class IceCreamShop {
    var flavors: [Flavor]
    var sizes: [Size]
    var toppings: [String]
    var totalSales: Double
    
    init(flavors: [Flavor], sizes: [Size], toppings: [String], totalSales: Double) {
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
        self.totalSales = totalSales
    }

func listTopFlavors() {
    for flavor in flavors {
        if flavor.rating >= 4.0 {
            print("Our topflavors are \(flavor)")
      }
    }
  }
    
func orderCone(flavor: Flavor, topping: String?, size: Size) -> Cone? {
    
    let newCone = Cone(flavor: flavor, topping: topping, size: size)
    self.totalSales += newCone.size.rawValue
    
    if let toppingChosen = newCone.topping {
        print("Your \(flavor) ice cream with \(toppingChosen) is \(size.rawValue)")
    } else {
        print("Your \(flavor) ice cream is \(size.rawValue)")
    }
    return newCone
 }
}

var vanillaBean = Flavor(name: "Slim Shady", rating: 3.5)
var chocolateMousse = Flavor(name: "Biggie Smalls", rating: 4.6)
var strawberryChocolate = Flavor(name: "Snoop Dogg", rating: 4.1)
var pastachio = Flavor(name: "Childish Gambino", rating: 5.0)

let flavorsOffered = [vanillaBean, chocolateMousse, strawberryChocolate, pastachio]
let sizesOffered = [Size.small, Size.medium, Size.large]
let toppingsOffered = ["Nuts", "Sprinkles", "Chocolate Syrup", "Caramel"]

let newIceCreamShop = IceCreamShop(flavors: flavorsOffered, sizes: sizesOffered, toppings: toppingsOffered, totalSales: 0.0)

newIceCreamShop.listTopFlavors()


