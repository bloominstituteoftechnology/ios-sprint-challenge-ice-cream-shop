// Ice-Cream Shop.
//
//struct Flavor {
//    let flavor1 = String
//    let flavor2 = String
//    let flavor2 = String
//}


enum Flavor {
    case chocolate
    case vanilla
    case strawberry
}

enum Size: (Double) {
    case small = 1.99
    case medium = 2.99
    case large = 3.99
}

struct Cone {
    let flavors: Flavor
    var toppings: String
    var size: Size
}

let myFavCone = Cone(flavors: .chocolate, toppings: "Sprinkles", size: .large)
func eat() {
    print("MMM I Love .\(myFavCone.flavors)")
}
eat()

class IceCreamShop {
    var flavors: [Flavor]
    var sizes: Size
    var toppings: String
  
    
    init(flavors: Flavor, sizes: Size, toppings: String) {
        self.flavors = [flavors]
        self.sizes = sizes
        self.toppings = toppings
        }
}
var totalSales: Double = 0


func listTopFlavors() -> [Flavor] {
    let availFlavs = [Flavor]()
    
    for flavors in availFlavs {
        print("Our available flavors are .\(Flavor.chocolate)")
    }
    return availFlavs
}
listTopFlavors()

func orderCone(cone: Cone) -> Cone? {
    let myOrder = Cone(flavors: .chocolate, toppings: "sprinkles", size: .large)
    var newTotalSales = totalSales + myOrder.size.rawValue
    return myOrder
    
    
}

print("The Price of a large chocolate cone is .\(Size.large)")

let newFlavors = ["Superman", "Mint", "Coffee"]
let newToppings = ["Snickers", "Gummy Worms"]
let newSizes = ["XL", "XXL", "XXXL"]

class newIceCreamShop: IceCreamShop {
    let newFlavors:[String]
    let newToppings:[String]
    let newSizes: [String]
    
    init(newFlavors: [String], newToppings: [String], newSizes: [String]) {
        self.newSizes = newFlavors
        self.newToppings = newToppings
        self.newSizes = newSizes
        super.init(flavors: [], sizes: Size, toppings: "Sprinkles")
    }
}











