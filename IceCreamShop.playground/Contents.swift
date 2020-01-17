import UIKit

struct Flavor {
    let name: String
    let rating: Double
}

enum Size: Double{
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}

enum Toppings: String{
    case chocolateSauce = "chocolate sauce"
    case caramelSauce = "caramel sauce"
    case sprinkles = "sprinkles"
    case whippedCream = "whipped cream"
    case none = "no toppings"
}


struct Cone{
    let flavor: Flavor
    let topping: Toppings
    let size: Size
    
    func eat(){
        print("Mmmmm... This \(size) \(flavor) cone with \(topping) is so good!")
    }
}

class IceCreamShop{
    var flavors: [Flavor] = []
    var toppings: [Toppings] = []
    var size: [Size] = []
    var totalSales: Double = 0
    
    init(flavors: [Flavor], toppings: [Toppings], size: [Size], totalSales: Double = 0.00) {
        self.flavors = flavors
        self.toppings = toppings
        self.size = size
        self.totalSales = totalSales
    }
    
    func listTopFlavors() -> String{
        var topFlavorArray: [String] = []
        flavors.sort(by: {$0.rating < $1.rating})
        for flavor in flavors{
            if flavor.rating >= 4.0{
                topFlavorArray.append(flavor.name)
            }
        }
        return("Our top flavors are \(topFlavorArray)")
    }
    
    func orderCone(flavor: Flavor, toppings: Toppings?, size: Size) -> Cone?{
        let newOrder: Cone
        if let toppings = toppings{
        newOrder = Cone(flavor: flavor, topping: toppings, size: size)
            totalSales += newOrder.size.rawValue
            print("Your \(flavor) ice cream with \(toppings) is \(size.rawValue)")
            
        }else {
            newOrder = Cone(flavor: flavor, topping: .none, size: size)
            totalSales += newOrder.size.rawValue
            print("Your \(flavor) ice cream with \(toppings!) is \(size.rawValue)")
        }
        return(newOrder)
    }
}

let chocolateChip: Flavor = Flavor(name: "Chocolate Chip", rating: 4.3)
let mintChip: Flavor = Flavor(name: "Mint Chip", rating: 4.8)
let rockyRoad: Flavor = Flavor(name: "Rocky Road", rating: 3.2)
let vanilla: Flavor = Flavor(name: "Vanilla", rating: 4.0)
let rainbowSherbert: Flavor = Flavor(name: "Rainbow Sherbert", rating: 4.1)

let sizes: [Size] = [.small, .medium, .large]
let toppings: [Toppings] = [.caramelSauce, .chocolateSauce, .sprinkles, .whippedCream, .none]
let flavors: [Flavor] = [chocolateChip, mintChip, rockyRoad, vanilla, rainbowSherbert]

let chrisIceCreamShop: IceCreamShop = IceCreamShop(flavors: flavors, toppings: toppings, size: sizes)


