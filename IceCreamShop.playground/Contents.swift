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
    let topping: String?
    let size: Size
    
    func eat() {
        print("Yum, I love \(flavor.name)!)")
    }
}


class IceCreamShop {
    var flavors: [Flavor]
    var sizes: [Size]
    var toppings: [String?]
    
    init(flavors: [Flavor], sizes: [Size], toppings: [String?]) {
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
        
        
    func listTopFlavors(_ flavors: [Flavor]) {
        var flavors: [Flavor] = flavors
        
        for flavor in flavors {
            if flavor.rating >= 4.0 {
                flavors.append(contentsOf: flavors)
                print("Our top flavors are \(flavor.name)!")
            }
        }
    }

    func orderCone(_ flavors: Flavor, toppings: String?, sizes: Size, totalSales: Double) -> Cone? {
        
        let myCone = Cone(flavor: flavor2, topping: toppings ?? " ", size: sizes)
 
        var totalSales: Double = 0.0
            totalSales += myCone.size.rawValue
        
        if myCone.topping != nil {
            print("Your \(myCone.flavor) with \(String(describing: myCone.topping)) is \(myCone.size)")
        } else {
            print("Your \(myCone.flavor) is \(myCone.size)")
        }
        
        return myCone
        }
    }
}


let flavor1 = Flavor(name: "Chocolate Fantasy", rating: 5.8)
let flavor2 = Flavor(name: "Raspberry Gelato", rating: 3.6)

var myToppings: [String?] = ["Whipped Cream",
                             "Chocolate Whipped Cream",
                             "Banana",
                             "Cherries"]

var shopSizes: [Size] = [.small, .large, .medium]

var myShop: [Flavor]
myShop.append(flavor1)
myShop.append(flavor2)

let cone1 = Cone(flavor: flavor2, topping: myToppings[1], size: .large)
cone1.eat()

print(totalSales)
