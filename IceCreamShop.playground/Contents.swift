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
    let topping: String?
    func eat(){
        print("Mmm! I love \(flavor.name)")
}

    

}



class IceCreamShop {
  var allFlavors: [Flavor]
    var totalSales: Double
    var toppings: [String?]
  
        
    init(allFlavors: [Flavor], totalSales: Double, toppings: [String?]) {
        self.allFlavors = allFlavors
        self.totalSales = totalSales
        self.toppings = toppings
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
    
    func orderCone(order: Cone) -> Cone? {
        totalSales += order.size.rawValue
        if let unwrappedTopping = order.topping {
            print("Your order is: \(order.size) \(order.flavor.name) with \(unwrappedTopping) will be $\(order.size.rawValue )")
        
        }
        else{
            print("Your order is: \(order.size.rawValue)")
        
                

}
return order
    
    
}

}

    

let pumpkinFlavor = Flavor(name: "Pumpkin ", rating: 5)
let chocolateFlavor = Flavor(name: "Chocolate ", rating: 6)
let superMan = Flavor.init(name: "Superman ", rating: 3)
let cookieDoughFlavor = Flavor(name: "Cookie Dough ", rating: 9)
let peanutButter = Flavor(name: "Peanut Butter ", rating: 10)
var totalPriceOfWaffleCone = 0.75
var totalPriceOfChocolateCone = 1.00
var totalPriceOfCakeCone = 0.90
var totalPriceOfTopping = 0.25
var topping = ["Sprinkles", "Chocolate Sprinkles", "Chocolate Syrup"]
var costOfPumpkin = 2.00
var costOfChoclate = 2.00
let costOfCookieDough =  2.00
let costOfPeanutButter = 2.00
var listOfFlavors = [pumpkinFlavor, chocolateFlavor, superMan, cookieDoughFlavor, superMan, peanutButter]
let eugenesIceCream = IceCreamShop.init(allFlavors: listOfFlavors, totalSales: 0.00, toppings: topping)
var eugenesCone = Cone.init(flavor: chocolateFlavor, size: .large, topping: "Chocolate Sprinkles")
eugenesIceCream.orderCone(order: .init(flavor: chocolateFlavor, size: .medium, topping: "Chocolate Sprinkles"))?.eat()


eugenesIceCream.listTopFlavors()

    



