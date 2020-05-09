
struct Flavor {
    let name: String
    let rating: Double
}

let strawberry = Flavor(name: "Strawberry", rating: 10)
let chocolate = Flavor(name: "Chocolate", rating: 7)
let vanilla = Flavor(name: "Vanilla", rating: 6)
let pistachio = Flavor(name: "Pistachio", rating: 3)
let allFlavors = [strawberry, chocolate, vanilla, pistachio]

print(strawberry.name)

enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}

struct Cone {
    let size: Size
    let topping: String?
    let flavor: Flavor
    
    func eat() {
        print("Mmm! I love \(flavor.name)!")
    }
}

Cone(size: .large, topping: "Nuts", flavor: chocolate).eat()

class IceCreamShop {
    var iceCreamFlavors: [Flavor]
    var totalSales: Double
    var sizes: [Size]
    var topping: [String]
    
    init(iceCreamFlavors: [Flavor], totalSales: Double, sizes: [Size], topping: [String]) {
    self.iceCreamFlavors = iceCreamFlavors
    self.totalSales = totalSales
    self.sizes = sizes
    self.topping = topping
    
    }
    
}
let myIceCreamShop = IceCreamShop(iceCreamFlavors: allFlavors, totalSales: 20, sizes: [], topping: [])

func orderCone(myOrder: Cone) -> Cone? {
    if let unwrappedOrder = myOrder.topping {
        print("Your \(myOrder.flavor.name) with \(unwrappedOrder) is \(myOrder.size.rawValue)")
   } else {
        print("Your \(myOrder.flavor.name) is \(myOrder.size.rawValue)")
    }
    return myOrder
}

    
func listTopFlavors() {
for topFlavors in allFlavors {
    if topFlavors.rating >= 4.0 {
        print("\(topFlavors.name) is a top flavor.")
        }
    }
}
var cone1 = Cone(size: .medium, topping: "Whipped Cream", flavor: strawberry)
var cone2 = Cone(size: .small, topping: "Chocolate Sauce", flavor: vanilla)
var cone3 = Cone(size: .large, topping: "Cherry", flavor: pistachio)
var cone4 = Cone(size: .medium, topping: " ", flavor: chocolate)


orderCone(myOrder: Cone(size: .large, topping: "sprinkles", flavor: chocolate))

listTopFlavors()
