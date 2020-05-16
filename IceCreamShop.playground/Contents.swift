
import UIKit

struct Flavor {
    var name: String
    var rating: Int
    var cost: Double
}


enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}
 
struct Cone {
    var flavors: Flavor
    var size: Size
    
    
    func eat() {
        print("Mmm! I love \(flavors.name)")
    }
    
}

class IceCreamShop {
    var allFlavors: [Flavor]
    var totalSales: Double
    
    init(allFlavors: [Flavor], eTotalSales: Double) {
    self.allFlavors = allFlavors
    self.totalSales = eTotalSales
    }
    
    func listTopFlavors() {
        var message = "Our top flavors are "
        
        for flavor in allFlavors {
            if flavor.rating >= 4 {
                message += flavor.name
            }
        }
    print(message)
    }
    func orderCone(eSize: Size, eFlavor: Flavor) -> Cone? {
        let costSize = size
        let newCone = Cone(flavors: eFlavor, size: size)
        for flavor in allFlavors {
            if flavor.name == eFlavor.name {
                totalSales += costSize.rawValue
            }
        }
        print(totalSales)
        print("Your total is $\(totalSales)")
        return newCone
    }
    
}

let vanilla = Flavor(name: "Vanilla ", rating: 6, cost: 2.00)
let mint = Flavor(name: "Mint", rating: 4, cost: 2.50)
let chocolate = Flavor(name: "Chocolate", rating: 2, cost: 1.50)

var sugarCone = 1.00
var waffleCone = 2.00

var vanillaCost = 2.00
var mintCost = 2.50
var chocolateCost = 1.50

let listOfFlavors = [vanilla, mint, chocolate]

let brysonsIceCream = IceCreamShop.init(allFlavors: listOfFlavors, eTotalSales: 0.00)

brysonsIceCream.orderCone(eSize: .medium, eFlavor: chocolate)

brysonsIceCream.orderCone(eSize: .small, eFlavor: vanilla)? .eat()

brysonsIceCream.orderCone(eSize: .large, eFlavor: mint)

brysonsIceCream.listTopFlavors()
