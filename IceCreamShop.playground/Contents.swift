


// Project



enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.78
}

struct Flavor {
    var name: String
    var rating: Double
}
 
struct Cone {
    let flavor: Flavor
    let topping: String
    let size: Size
    
    func eat() {
        print("Mmm! I love \(flavor)")
    }
}


class IceCreamShop {
    var flavorsMenu: [Flavor]
    var toppingsMenu: [String]
    var sizeMenu: [Size]
    var totalSales: Double = 0
    
    init(flavorsMenu: [Flavor], toppingsMenu: [String], sizeMenu: [Size], totalSales: Double = 0) {
        self.flavorsMenu = flavorsMenu
        self.toppingsMenu = toppingsMenu
        self.sizeMenu = sizeMenu
        self.totalSales = totalSales
    }
    func listTopFlavors() {
        var addFlavors: [String] = []
        for flavor in flavorsMenu {
            if flavor.rating < 4.0 {
               print(" Our top flavors are \(addFlavors.append(flavor.name))")
            }
            print(flavor)
        }
        
    }
    
    func orderCone(flavor: Flavor, topping: String, size: Size ) -> Cone? {
        let newCone = Cone(flavor: flavor, topping: topping, size: size)
        totalSales += newCone.size.rawValue
        var iceCreamOrder = " "
        iceCreamOrder += "Your \(newCone.flavor) with \(newCone.topping) is total of \(totalSales) "
print(iceCreamOrder)
        return newCone
        }
     
        
    }
    
let newFlavor1 = Flavor(name: "Chocolate", rating: 4.1)
let newFlavor2 = Flavor(name: "Vanilla", rating: 4.5)
let newFlavor3 = Flavor(name: "Cookie Dough", rating: 4.9)
var totalFlavors = [newFlavor1, newFlavor2, newFlavor3]
let myTopping1 = "Sprinkles"
let myTopping2 = "Chocolate Chips"
let myTopping3 = "Caramel"


let totalToppings: [String] = [myTopping1, myTopping2, myTopping3]

let totalSizes: [Size] = [.large, .medium, .small]


let myIceCreamShop = IceCreamShop(flavorsMenu: totalFlavors, toppingsMenu: totalToppings, sizeMenu: totalSizes)

myIceCreamShop.orderCone(flavor: newFlavor3, topping: myTopping1, size: .large)

myIceCreamShop.listTopFlavors()



//    func orderCone(flavor: Flavor, theTopping: [String]?, size: Size) -> Cone? {
//
//        guard let unwrappedTopping = theTopping else {
//        return nil
//        }
//        let newCone = Cone(flavor: [flavor], topping: unwrappedTopping, size: size)
//        totalSales += newCone.size.rawValue
//        if let orderedCone: [String] = newCone.topping { // to assign array of string to array of string
//            print("Your order of flavor  \(newCone.flavor) with \(newCone.topping) will be of total \(totalSales) US dollars.")
//        } else {
//        print("Your \(newCone.flavor) with no topping will be of \(totalSales)")
//
//        }
//
//        return newCone
//    }
//}
//
//
//let newFlavors1 = Flavor(name: "Vanilla", rating: 4.9)
//let newFlavors2 = Flavor(name: "Chocolate", rating: 5.0)
//let newFlavors3 = Flavor(name: "CoockieDough", rating: 4.8)
//let addFlavors = [newFlavors1, newFlavors2, newFlavors3]
//let arrayOfSizes: [Size] = [.large, .medium, .small]
//let newToppings: [String] = ["Chocolate chips", "Sprinkles", "Caramel", "Nuts"]
//
//let addToIceCreamShop = IceCreamShop(flavorMenu: [newFlavors1, newFlavors2, newFlavors3], toppingMenu: newToppings, sizeMenu: arrayOfSizes)
//let newConstant = addToIceCreamShop.orderCone(flavor: newFlavors2, theTopping: newToppings, size: .medium)
//
//
//
//

