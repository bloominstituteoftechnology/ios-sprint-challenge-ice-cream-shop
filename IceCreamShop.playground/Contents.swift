import UIKit

enum Size : Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}
struct Flavor  {
    let name : String
    let rating : Double
}

struct Cone {
    let flavor : String
    let topping : String?
    let size : Size
    
    
    func eat(){
        print("Mmm! I love \(self.flavor).")
    }
}

class IceCreamShop {
    var flavors: [Flavor]
    var size : [Size]
    var toppings : [String]
    var totalSales : Double
    
    init(flavors: [Flavor], size : [Size], toppings : [String], totalSales: Double = 0){
        self.flavors = flavors
        self.size = size
        self.toppings = toppings
        self.totalSales = totalSales
    }
    
    func listTopFlavors(){
        
        let topF = flavors.filter({$0.rating >= 4.0}).map({$0.name})
        switch topF.count {
        case 0:
            print("We our out of flavors.")
    
        default:
            
            if let i = topF.joined(separator: " , ").lastIndex(of: ",") {
                var str = "\(topF.joined(separator: " , "))"

                str.replaceSubrange(i...i, with: "and")
                
                print("Our top flavors are : " + str )
                
            }
            
        }
        
    }
    
    func orderCone (flavor: String, size: Size, topping : String?) -> Cone?{
        
        var newOrder: Cone? = nil
        
        let filteredFlavors = flavors.filter({$0.name == flavor})
        if filteredFlavors.count >= 1 {
            newOrder = Cone(flavor: flavor, topping: topping, size: size)
        }
        
        var priceofCone = ""
        guard let order = newOrder else {
            print("We are sorry, we do not currently have \(flavor) flavor.")
            return nil}
        
        self.totalSales += order.size.rawValue
        if let topping = order.topping {
           priceofCone += "Your \(order.flavor) with \(topping) is \(order.size.rawValue)"
        } else {
            priceofCone += "Your \(order.flavor) is \(order.size.rawValue)"
        }
        
        return newOrder
        
    }
    
}


let flavorMint = Flavor(name: "Mint", rating: 4.5)
let flavorVannila = Flavor(name: "Vanilla", rating: 5)
let flavorCherry = Flavor(name: "Cherry", rating: 3.5)
let flavors = [flavorMint, flavorCherry, flavorVannila]

let coneSizes = [Size.large, Size.small, Size.medium, Size.large, Size.medium, Size.small]
let toppings = ["Hot fudge", "Oreos", "Sprinkles", "Caramel"]


var newIcecreamShop = IceCreamShop(flavors: flavors, size: coneSizes, toppings: toppings)
newIcecreamShop.listTopFlavors()

let newCone = newIcecreamShop.orderCone(flavor: "Banana Split", size: .large, topping: nil)

newCone?.eat()
print(newIcecreamShop.totalSales)

let anotherCone = newIcecreamShop.orderCone(flavor: newIcecreamShop.flavors[1].name, size: .small, topping: newIcecreamShop.toppings[1])
newCone?.eat()
print(newIcecreamShop.totalSales)





