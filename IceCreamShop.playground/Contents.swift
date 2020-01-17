import Foundation

enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}
struct Flavor {
    var name: String
    let rating: Double
    
}
struct Cone {
    var flavor: Flavor
    let topping: String?
    let size: Size
    
func eat() {
    print("Mmm! I love \(flavor)")
}
}
class IceCreamShop {
    var flavors: [Flavor]
    var sizes: [Size]
    var toppings: [String]
    var totalSales: Double
    
    
    
    init(flavors: [Flavor], sizes: [Size], toppings: [String], totalSales: Double) {
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
        self.totalSales = totalSales
    }
    func listTopFlavors() {
        for flavor in flavors {
            if flavor.rating > 4.0 {
                print("Our top flavors are \(flavor.name)")
            }
        }
    }
    
    func orderCone(flavor: Flavor, topping: String, size: Size) -> Cone? {
        let newCone = Cone(flavor: flavor, topping: topping, size: size)
        totalSales = newCone.size.rawValue
        if let newtopping = newCone.topping {            print("Your \(newCone.flavor) with \(newtopping) is \(newCone.size)")
        }
      
        return newCone
            
}
}


let flavor1 = Flavor(name: "Vanilla", rating: 4.3)
let flavor2 = Flavor(name: "Chocolate", rating: 4.5)
let flavor3 = Flavor(name: "Strawberry", rating: 2.3)

let newIceCreamShop = IceCreamShop(flavors: [flavor1, flavor2, flavor3], sizes: [.large, .medium, .small], toppings: ["Sprinkles", "Candy", "Cookies"], totalSales: 14.99)
// STILL NEED TO PRINT!**

    // passing into means parameters





