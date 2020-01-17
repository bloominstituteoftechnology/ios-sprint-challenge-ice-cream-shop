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
}


struct Cone{
    let flavor: Flavor
    let topping: Toppings?
    let size: Size
    
    func eat(){
        if let toppings = topping{
        print("Mmmmm... This \(size) \(flavor.name) cone with \(toppings.rawValue) is so good!")
    }
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
        
        print("Our top flavors are \(cleanUpFlavorString(stringArray: topFlavorArray))")
        return("Our top flavors are \(topFlavorArray)")
    }
    
    func cleanUpFlavorString(stringArray: [String]) -> String {
        var string = ""
        for flavor in stringArray {
            if flavor == stringArray.last {
                string.append("& \(flavor).")
            } else {
            string.append("\(flavor), ")
            }
        }
        return string
    }
    
    func orderCone(cone: Cone) -> Cone?{
        var newOrder: Cone = cone
        if let toppings = newOrder.topping{
            newOrder = Cone(flavor: newOrder.flavor, topping: toppings, size: newOrder.size)
            totalSales += newOrder.size.rawValue
            print("Your \(newOrder.flavor.name) ice cream with \(toppings.rawValue) is \(currencyConverter(amount: totalSales))")
            
        }else {
            newOrder = Cone(flavor: newOrder.flavor, topping: nil, size: newOrder.size)
            totalSales += newOrder.size.rawValue
            print("Your \(newOrder.flavor.name) ice cream is \(currencyConverter(amount: totalSales))")
        }
        return(newOrder)
    }
    
    func currencyConverter(amount: Double) -> String {
        let converTotal = totalSales
        
        let currencyFormatter = NumberFormatter()
        currencyFormatter.usesGroupingSeparator = true
        currencyFormatter.numberStyle = .currency
        currencyFormatter.locale = Locale.current
        
        guard let formatedTotal = currencyFormatter.string(from: NSNumber(value: converTotal)) else {
            return("Invalid Amount")
        }
        return(formatedTotal)
    }
    
    func currencyConvertedTotalSales() -> String{
        return(currencyConverter(amount: totalSales))
        }
    }

let chocolateChip: Flavor = Flavor(name: "Chocolate Chip", rating: 4.3)
let mintChip: Flavor = Flavor(name: "Mint Chip", rating: 4.8)
let rockyRoad: Flavor = Flavor(name: "Rocky Road", rating: 3.2)
let vanilla: Flavor = Flavor(name: "Vanilla", rating: 4.0)
let rainbowSherbert: Flavor = Flavor(name: "Rainbow Sherbert", rating: 4.1)

let sizes: [Size] = [.small, .medium, .large]
let toppings: [Toppings] = [.caramelSauce, .chocolateSauce, .sprinkles, .whippedCream]
let flavors: [Flavor] = [chocolateChip, mintChip, rockyRoad, vanilla, rainbowSherbert]

let chrisIceCreamShop: IceCreamShop = IceCreamShop(flavors: flavors, toppings: toppings, size: sizes)

chrisIceCreamShop.listTopFlavors()


let firstCone: Cone = Cone(flavor: chocolateChip, topping: nil, size: .large)

chrisIceCreamShop.orderCone(cone: firstCone)

print(chrisIceCreamShop.currencyConvertedTotalSales())

