import UIKit

struct Flavor {
    let name: String
    let rating: Double
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
        var message = "Our top flavors are: "
        
        
        for flavor in allFlavors {
            if flavor.rating >= 4 {
                message += flavor.name
                
                
                
            }
            
            
        }
        print(message)
        
        
    }
    
    func orderCone(flavor: Flavor, size: Size, topping: String?) -> Cone? {
        let newCone = Cone(flavor: flavor, size: size, topping: topping)
        totalSales += newCone.size.rawValue
        if let unwrappedTopping = topping {
            print("Your order is \(flavor.name)with \(unwrappedTopping) will be $\(size.rawValue ).")
            
        }
        else{
            print("Your order is: \(flavor.name) will be \(size.rawValue)")
            
            
            
        }
        
        return newCone
        
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
var eugenesCone = Cone.init(flavor: chocolateFlavor, size: .large, topping: "Chocolate Sprinkles").eat()
eugenesIceCream.orderCone(flavor: chocolateFlavor, size: .large, topping: "Sprinkles")


eugenesIceCream.listTopFlavors()





