import UIKit

struct Flavor{
    var name: String
    var rating: Int
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
    var flavors: [Cone]
    var sizes: [Cone]
    var toppings: [Cone]
    var totalSales = 0.00
    
    init(totalSales: Double) {
        self.totalSales = totalSales
        self.flavors = []
        self.sizes = []
        self.toppings = []
    }
}



let flavor1 = Flavor(name: "Chocolate", rating: 5)
let flavor2 = Flavor(name: "Vanilla", rating: 5)
let flavor3 = Flavor(name: "Coconut", rating: 1)
let flavor4 = Flavor(name: "Mint", rating: 3)
let flavor5 = Flavor(name: "Rocky Road", rating: 3)
var completeMenu: [Flavor] = []
completeMenu.append(flavor1)
completeMenu.append(flavor2)
completeMenu.append(flavor3)
completeMenu.append(flavor4)
completeMenu.append(flavor5)


func listTopFlavors(){

    for flavors in completeMenu{
        if flavors.rating >= Int(4.0){
            print("Our top flavors are: \(flavors.name)")
        }
    }
}

func orderCone(flavor: Flavor, topping: String?, size: Size) -> Cone?{
    
    let cone: Cone? = Cone(flavor: flavor, topping: topping , size: size)
    
    guard let unwrappedTopping = topping else { return nil }
    guard let unwrappedCone = cone else { return nil }
    
    switch unwrappedCone.size {
    case .small:
        let total = unwrappedCone.size.rawValue
        print("Your \(flavor.name) ice cream with \(unwrappedTopping) is $\(total )")
    case .medium:
        let total = unwrappedCone.size.rawValue
        print("Your \(flavor.name) ice cream with \(unwrappedTopping) is $\(total)")
    case .large:
        let total = unwrappedCone.size.rawValue
        print("Your \(flavor.name) ice cream with \(unwrappedTopping) is $\(total)")
    }
    return cone
}
listTopFlavors()

let cone1 = orderCone(flavor: flavor1, topping: "Chocolate Sprinkles", size: .large)
let cone2 = orderCone(flavor: flavor2, topping: "Whipped Cream", size: .medium)
let cone3 = orderCone(flavor: flavor3, topping: "Hot Fudge", size: .small)
let cone4 = orderCone(flavor: flavor4, topping: "Oreos", size: .large)

cone1?.eat()
cone2?.eat()
cone3?.eat()
cone4?.eat()

// Note - I tried using nil coalescing but I kept receiving an error that the compiler was taking too long to execute the code and to try breaking it up. So I had no choice but to force unwrap in order to get it to actually run the code.
var shop1Sales = IceCreamShop(totalSales: (cone1?.size.rawValue)! + (cone2?.size.rawValue)! + (cone3?.size.rawValue)! + (cone4?.size.rawValue)!)
print("The total sales were: $\(shop1Sales.totalSales)")


