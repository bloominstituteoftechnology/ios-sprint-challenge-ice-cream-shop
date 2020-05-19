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
    var totalSales: Double = 0.0

    
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

    func orderCone(_ flavors: Flavor, toppings: String?, sizes: Size) -> Cone? {
        
        let myCone = Cone(flavor: flavor2, topping: toppings ?? " ", size: sizes)
 
        self.totalSales += myCone.size.rawValue
        
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

var myFlavors: [Flavor] = [flavor1, flavor2]

var myToppings: [String?] = ["Chocolate Whipped Cream", "Cherries", "Nuts"]

var shopSizes: [Size] = [.small, .large, .medium]

var myShop: IceCreamShop
myShop = IceCreamShop(flavors: myFlavors, sizes: shopSizes, toppings: myToppings )


let cone1 = Cone(flavor: flavor2, topping: nil, size: .large)
cone1.eat()

print(myShop.totalSales)
