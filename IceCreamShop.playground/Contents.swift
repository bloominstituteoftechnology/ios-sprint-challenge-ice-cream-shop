import UIKit

var currencyFormatter: NumberFormatter = {
    let formatter = NumberFormatter()
    formatter.numberStyle = .currencyAccounting
    return formatter
}()

struct Flavor {
    let name: String
    let rating: Double
}

enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}

struct Cone {
    var flavor: Flavor
    var toppings: String
    var size: Size
    
    func eat(){
        print("Mmmm! I love \(flavor.name)!!")
    }
}

class IceCreamShop {
    var flavor: [Flavor]
    var size: [Size]
    var toppings: [String]
    var totalSales: Double = 0.00
    
    init(flavor: [Flavor],size: [Size],toppings: [String], totalSales: Double) {
        self.flavor = flavor
        self.size = size
        self.toppings = toppings
        self.totalSales = totalSales
    }
    
    func listTopFLavors() {
        
        for flavor in flavor {
            if flavor.rating >= 4.0 {
                print("Our top flavors are: \(flavor.name)")
            }
        }
    }
    
    func orderCone(flavor: Flavor, toppings: String?, size: Size) -> Cone?{
        
        let cone = Cone(flavor: flavor, toppings: toppings ?? "no toppings", size: size)
        
        guard let unwrappedToppings = toppings
            else { return nil }
        
        switch cone.size {
        case .small:
            totalSales += totalSales + cone.size.rawValue
            print("Your \(flavor.name) ice cream with \(unwrappedToppings) is $\(Size.small.rawValue)")
        case .medium:
            totalSales += totalSales + cone.size.rawValue
            print("Your \(flavor.name) ice cream with \(unwrappedToppings) is $\(Size.medium.rawValue)")
        case .large:
            totalSales += totalSales + cone.size.rawValue
            print("Your \(flavor.name) ice cream with \(unwrappedToppings) is $\(Size.large.rawValue)")
        }
        
        return cone
    }
}

let chocolate = Flavor(name: "Chocolate", rating: 4.8)
let vanilla = Flavor(name: "Vanilla", rating: 4.0)
let pistachio = Flavor(name: "pistachio", rating: 5.0)
let cherry = Flavor(name: "cherry", rating: 3.9)
var allFlavors = [chocolate, vanilla, pistachio, cherry]
let Topping1 = "Sprinkles"
let Topping2 = "Whipped Cream"
let Topping3 = "Marshmallows"


let allToppings: [String] = [Topping1, Topping2, Topping3]

let allSizes: [Size] = [.large, .medium, .small]

let myIceCreamShop = IceCreamShop(flavor: allFlavors, size: allSizes, toppings: allToppings, totalSales: 0.00 )

myIceCreamShop.orderCone(flavor: chocolate, toppings: Topping1, size: .large)

myIceCreamShop.listTopFLavors()

let bensCone = Cone(flavor: pistachio, toppings: Topping2, size: .medium)

myIceCreamShop.orderCone(flavor: pistachio, toppings: Topping1, size: .large)

bensCone.eat()

print(currencyFormatter.string(from: NSNumber(value: myIceCreamShop.totalSales)) ?? "It's on the house!")

