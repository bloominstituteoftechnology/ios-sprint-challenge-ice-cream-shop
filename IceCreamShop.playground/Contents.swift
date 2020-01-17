import UIKit

struct Flavor{
    var name: String
    var rating: Double
}

enum Size: Double{
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}

struct Cone{
    let flavor: Flavor
    let topping: String?
    let size: Size
    
    func eat() {
        print("Mmm! I love \(flavor.name)!")
    }
}

class IceCreamShop{
    var flavors: [Flavor]
    var sizes: [Size]
    var toppings: [String]
    var totalSales = 0.00
    
    init(flavors: [Flavor], toppings: [String], sizes: [Size], totalSales: Double ) {
        self.flavors = flavors
        self.toppings = toppings
        self.sizes = sizes
        self.totalSales = totalSales
    }
    
    func listTopFlavors(){

        
        for flavor in flavors{
            if flavor.rating >= 4.0 {
                print("Our top flavors are: \(flavor.name)")
            }
        }
    }



func orderCone(flavor: Flavor, topping: String?, size: Size) -> Cone?{
    
    let cone = Cone(flavor: flavor, topping: topping, size: size)
    
    guard let unwrappedTopping = topping else { return nil }
    
    switch cone.size {
    case .small:
        totalSales += totalSales + cone.size.rawValue
        print("Your \(flavor.name) ice cream with \(unwrappedTopping) is $\(totalSales)")
    case .medium:
        totalSales += totalSales + cone.size.rawValue
         print("Your \(flavor.name) ice cream with \(unwrappedTopping) is $\(totalSales)")
    case .large:
        totalSales += totalSales + cone.size.rawValue
         print("Your \(flavor.name) ice cream with \(unwrappedTopping) is $\(totalSales)")
    }
    
    return cone
  }
}

let flavorArray = [Flavor(name: "Chocolate", rating: 5), Flavor(name: "Vanilla", rating: 4), Flavor(name: "Coconut", rating: 3)]
let sizeArray: [Size] = [.small, .medium, .large]
let toppingArray: [String] = ["Chocolate Sprinkles", "Whipped Cream", "Oreos"]
let shop = IceCreamShop(flavors: flavorArray, toppings: toppingArray, sizes: sizeArray, totalSales: 0)
shop.listTopFlavors()
let customerOrder = shop.orderCone(flavor: flavorArray[0], topping: toppingArray[0], size: .large)
customerOrder?.eat()
print("$Total Sales: \(shop.totalSales)")
