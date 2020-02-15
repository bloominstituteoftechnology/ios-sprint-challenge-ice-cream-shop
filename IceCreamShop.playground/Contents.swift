


// Project

struct Flavor {
    var name: String
    var rating: Double
}

enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.78
}

 
struct Cone {
    let flavor: [Flavor]
    let topping: [String]
    let size: Size
    
    func eat() {
        print("Mmm! I love \(flavor)")
    }
}


class IceCreamShop {
    let flavorMenu: [Flavor]
    let toppingMenu: [String]
    let sizeMenu: [Size]
    var totalSales: Double = 0
    
    init(flavorMenu: [Flavor], toppingMenu: [String], sizeMenu: [Size], totalSales: Double = 0) {
        self.flavorMenu = flavorMenu
        self.toppingMenu = toppingMenu
        self.sizeMenu = sizeMenu
        self.totalSales = totalSales
    }
    func listTopFlavors() {
        var addFlavors: [String] = []
        for flavor in flavorMenu {
            if flavor.rating < 4.0 {
                addFlavors.append(flavor.name)
            }
            print(flavor)
        }
        
    }
    
    func orderMenu(flavor: Flavor, theTopping: [String]?, size: Size) -> Cone? {
        
        guard let unwrappedTopping = theTopping else {
        return nil
        }
        let newCone = Cone(flavor: [flavor], topping: unwrappedTopping, size: size)
        totalSales += newCone.size.rawValue
        if let orderedCone: [String] = newCone.topping { // to assign array of string to array of string
            print("Your order of flavor  \(newCone.flavor) with \(newCone.topping) will be of total \(totalSales) US dollars.")
        } else {
        print("Your \(newCone.flavor) with no topping will be of \(totalSales)")
        }
        return newCone
    }
}


let newFlavors1 = Flavor(name: "Vanilla", rating: 4.9)
let newFlavors2 = Flavor(name: "Chocolate", rating: 5.0)
let newFlavors3 = Flavor(name: "CoockieDough", rating: 4.8)

let arrayOfSizes: [Size] = [.large, .medium, .small]
let newToppings: [String] = ["Chocolate chips", "Sprinkles", "Caramel", "Nuts"]

let addToIceCreamShop = IceCreamShop(flavorMenu: [newFlavors1, newFlavors2, newFlavors3], toppingMenu: newToppings, sizeMenu: arrayOfSizes)
let newConstant = addToIceCreamShop.orderMenu(flavor: newFlavors1, theTopping: newToppings, size: .medium)
