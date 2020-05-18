


// Create a struct called Flavor. Add the following properties. Think about what type they should be:
struct Flavor {
    let name: String
    let rating: Int
}


enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 6.99
}



struct Cone {
    let flavor: Flavor
    let topping: String?
    let size: Size
    
    func eat() {
        print("MMM! I love \(flavor.name)!")
    }
}
    

class IceCreamShop {
    var flavorsMenu: [Flavor]
    var toppingsMenu: [String?]
    var sizeMenu: [Size]
    var totalSales: Double = 0
   
    init(flavorsMenu: [Flavor], toppingsMenu: [String?], sizeMenu: [Size], totalSales: Double = 0) {
          self.flavorsMenu = flavorsMenu
          self.toppingsMenu = toppingsMenu
          self.sizeMenu = sizeMenu
          self.totalSales = totalSales
    }
    
    func listTopFlavors() {
        var flavorString = "Our top flavors are: "
        for flavor in flavorsMenu {
            if flavor.rating > 4 {
                flavorString.append("\(flavor.name), ")
            }
        }
        print("\(flavorString)")
    }

    
    
    
    
// 6. Customers will need a way to order a cone.


func orderCone(flavor: Flavor, toppings: String?, size: Size) -> Cone? {
    let newCone = Cone(flavor: flavor, topping: toppings, size: size)
    totalSales += newCone.size.rawValue
    if let unwrappedTopping = toppings {
        print("Your \(flavor.name) ice cream with \(unwrappedTopping) is \(size.rawValue)")
    } else {
        print(("Your \(flavor.name) ice cream is \(size.rawValue)"))
    }
    return newCone
}
}


let myFlavor1 = Flavor(name: "Chocolate", rating: 10)
let myFlavor2 = Flavor(name: "Vanilla", rating: 3)
let myFlavor3 = Flavor(name: "Cookie Dough", rating: 8)

var allFlavors = [myFlavor1, myFlavor2, myFlavor3]

let myTopping1 = "Sprinkles"
let myTopping2 = "Chocolate Chips"
let myTopping3 = "Oreos"

let totalToppings: [String] = [myTopping1, myTopping2, myTopping3]

let totalSizes: [Size] = [.large, .medium, .small]

let lambdaIceCreamShop = IceCreamShop(flavorsMenu: allFlavors, toppingsMenu: totalToppings, sizeMenu: totalSizes)

lambdaIceCreamShop.orderCone(flavor: myFlavor1, toppings: myTopping3, size: .small)

lambdaIceCreamShop.listTopFlavors()

let firstOrderToday = lambdaIceCreamShop.orderCone(flavor: myFlavor2, toppings: myTopping3, size: .large)

firstOrderToday?.eat()

print(lambdaIceCreamShop.totalSales)

