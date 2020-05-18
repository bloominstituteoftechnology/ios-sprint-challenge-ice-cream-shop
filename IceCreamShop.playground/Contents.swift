import UIKit

struct Flavor {
    var name: String
    var rating: Double
}

enum Size: Double {
    case small = 1.00
    case medium = 2.88
    case large = 5.25
}

struct Cone {
    let flavor: Flavor
    let topping: String
    let size: Size
    
    func eat() {
        print("Yum, I love \(flavor.name)!)")
    }
}

class IceCreamShop {
    var totalSales: Double
    var flavors: [Flavor]
    var sizes: [Size]
    var toppings: [String?]
    
    init(totalSales: Double, flavors: [Flavor], sizes: [Size], toppings: [String?]) {
        self.totalSales = totalSales
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
    }

}




func listTopFlavors() {
    var topFlavor: [String] = []
    
    for topFlavors in Flavor {
        if topFlavor.rating > 4.0 {
            topFlavor.append(topFlavor)
        }
    }
    print("Our top flavors are \(topFlavor)")

}

func orderCone(flavors: [Flavor], toppings: [String?], size: [Size]) -> Cone? {
    let myCone = Cone(flavors: [Flavor], topping: [String?], size: [Size])
    
    totalSales += myCone.size.rawValue
    
    if myCone.topping != nil {
        print("Your \(myCone.flavor) with \(myCone.topping) is \(myCone.size)")
    } else {
        print("Your \(myCone.flavor) is \(myCone.size)")
    }
    
    return myCone
}


let flavor1 = Flavor(name: "Chocolate Fantasy", rating: 5.8)
let flavor2 = Flavor(name: "Raspberry Gelato", rating: 3.6)

var toppings: [String?] = ["Whipped Cream", "Chocolate Whipped Cream", "Banana", "Cherries"]

var shopSizes: [Size] = [.small, .large, .medium]

let myShop: IceCreamShop

myShop.listTopFlavors()

let cone1 = orderCone(flavors: flavor1, toppings: "", size: .large)
cone1?.eat()
print(totalSales)



