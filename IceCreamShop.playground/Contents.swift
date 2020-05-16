import UIKit

struct Flavor {
    let name: String
    let rating: Int
}



enum Size: Double {
    case small = 2.99
    case medium = 3.99
    case large = 4.99
    case xl = 5.25
}

struct Cone {
    let flavor: Flavor
    let size: Size
    func eat(){
        print("Mmm! I love \(flavor.name)")

}



}


class IceCreamShop {
  var allFlavors: [Flavor]
    var totalSales: Double
  
        
    init(allFlavors: [Flavor], totalSales: Double) {
        self.allFlavors = allFlavors
        self.totalSales = totalSales
    }

func listTopFlavors() {
    var message = "Our Top Flavors Are: "
    
    
    for flavor in allFlavors {
        if flavor.rating >= 4 {
            message += flavor.name
        
            
        
    }
  
  
    }
   print(message)


}
    
    func orderCone(size: Size, eflavor: Flavor) -> Cone? {
        let costSize = size
        let newCone = Cone.init(flavor: eflavor, size: size)
        
        for flavor in allFlavors {
            if flavor.name == eflavor.name {
                totalSales += costSize.rawValue
            }
        }
    print(totalSales)
        print("Your total is $\(totalSales)")
        return newCone
    }
    
}

let pumpkinFlavor = Flavor.init(name: "Pumpkin ", rating: 5)
let chocolateFlavor = Flavor.init(name: "Chocolate ", rating: 4)
let superMan = Flavor.init(name: "Superman ", rating: 3)
let cookieDoughFlavor = Flavor(name: "Cookie Dough ", rating: 5)
let peanutButter = Flavor(name: "Peanut Butter ", rating: 5)
var totalPriceOfWaffleCone = 0.75
var totalPriceOfChocolateCone = 1.00
var totalPriceOfCakeCone = 0.90
var totalPriceOfTopping = 0.25
var costOfPumpkin = 2.00
var costOfChoclate = 2.00
let costOfCookieDough =  2.00
let costOfPeanutButter = 2.00
var listOfFlavors = [pumpkinFlavor, chocolateFlavor, superMan, cookieDoughFlavor, superMan, peanutButter]
let eugenesIceCream = IceCreamShop.init(allFlavors: listOfFlavors, totalSales: 0.0)
eugenesIceCream.orderCone(size: .small, eflavor: pumpkinFlavor)?.eat()
eugenesIceCream.orderCone(size: .medium, eflavor: chocolateFlavor)
eugenesIceCream.orderCone(size: .large, eflavor: cookieDoughFlavor)
print(eugenesIceCream.totalSales)

eugenesIceCream.listTopFlavors()

    



