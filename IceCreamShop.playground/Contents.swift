// Ice-Cream Shop.

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

let myFavCone = Cone(flavors: Flavor.chocolate, toppings: "Sprinkles", size: .large)
func eat() {
    print("MMM I love \(myFavCone.flavors) icecream")
}
eat()

class IceCreamShop {
    var flavors: Flavor
    var sizes: Size
    var toppings: String
  
    
    init(flavors: Flavor, sizes: Size, toppings: String) {
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
        }
}
var totalSales: Double = 0
var allFlavors = [Flavor.chocolate, Flavor.strawberry, Flavor.vanilla]

func listTopFlavors() {
    let availFlavs = allFlavors
    
    for _ in availFlavs {
        print("Our available flavors are .\([allFlavors])")
    }
}
listTopFlavors()

func orderCone(cone: Cone)  {
    let myOrder = Cone(flavors: .chocolate, toppings: "sprinkles", size: .large)
    let newTotalSales = totalSales + myOrder.size.rawValue
    print(newTotalSales)
}

print("The Price of a large chocolate cone is .\(Size.large)")
orderCone(cone: myFavCone)

let newFlavor1:

//class newIceCreamShop: IceCreamShop {
//    let newFlavors:[String]
//    let newToppings:[String]
//    let newSizes: [String]
//
//    init(newFlavors: [String], newToppings: [String], newSizes: [String]) {
//        self.newSizes = newFlavors
//        self.newToppings = newToppings
//        self.newSizes = newSizes
//        super.init(flavors: newFlavors, sizes: Size, toppings: "Sprinkles")
//    }
//}
//
//listTopFlavors()


var myNewCone = Cone(flavors: .strawberry, toppings: "Skittles", size: .medium)
eat()
orderCone(cone: myNewCone)











