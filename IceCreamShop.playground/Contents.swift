import UIKit

struct Flavor {
    let chocolate: String
    let vanilla: String
    let mint: String
    let peanutButter: String
    
}



enum Size: String {
  case small = "Small"
    case medium = "Medium"
    case large = "Large"
    case xl = "Extra Large"
}
struct Cone {
    let waffleCone: String
    let sprinkles: String
    let chocolateSyrup: String
    let topping: String
}
 
    func eat(flavor: String){
        print("Mmm! I love \(flavor)")
}


eat(flavor: "Chocolate!")

class IceCreamShop {
    var menuFlavors = Flavor(chocolate: "Chocolate", vanilla: "Vanilla", mint: "Mint", peanutButter: "Peanut Butter")

    var topping: String
    
    
    init(menuFlavors: Flavor, topping: String) {
        self.menuFlavors = menuFlavors
        self.topping = topping
    }
        
    }
    


