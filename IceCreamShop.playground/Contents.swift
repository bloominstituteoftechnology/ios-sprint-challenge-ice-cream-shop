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
    var toppings: [String]
    
    init(totalSales: Double, flavors: Flavor, sizes: Size, toppings: String) {
        self.totalSales = totalSales
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
    }

}




func listTopFlavors() {
    for topFlavor in Flavor {
        if topFlavor.rating > 4.0 {
            print("Our top flavors are \(Cone.flavor)")
        }
    }
}

func orderCone(flavor: Flavor, topping: String, size: Double) -> Cone? {
    let myCone = Cone(flavor: flavor, topping: topping, size: size)
    
    
    
    
}
