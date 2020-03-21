import UIKit

struct Flavor {
    let name: String
    let rating: Double
    
}

let flavor1 = Flavor(name: "Chocolate", rating: 5.0)
let flavor2 = Flavor(name: "Vanilla", rating: 4.3)
let flavor3 = Flavor(name: "Birthday Cake", rating: 4.0)
let flavor4 = Flavor(name: "Key Lime", rating: 3.5)


enum Size: Double {
    case Small = 1.99
    case Medium = 2.50
    case Large = 3.99
    
}

struct Topping {
    let topping: String
}

let topping1 = Topping(topping: "Sprinkles")
let topping2 = Topping(topping: "Gummie Bears")
let topping3 = Topping(topping: "Reese's Pieces")
let topping4 = Topping(topping: "Graham Cracker")


struct Cone {
    var flavor: Flavor
    var topping: Topping
    var size: Size
    
    func eat() {
        print("Mmmm! This \(flavor.name) ice cream cone is delicious!")
    }
}

class IceCreamShop {
    var flavor: [Cone]
    var totalSales: Size
    
    init(flavor: [Cone], totalSales: Size) {
    self.flavor = []
    self.totalSales = totalSales
        }
    func add(flavors: Cone) {
        flavor.append(flavors)
    }
}

let iceCream = IceCreamShop(flavor: [], totalSales: .Large)
let cone1 = Cone(flavor: flavor1, topping: topping3, size: .Medium)
let cone2 = Cone(flavor: flavor3, topping: topping1, size: .Large)
let cone3 = Cone(flavor: flavor2, topping: topping4, size: .Small)
let cone4 = Cone(flavor: flavor4, topping: topping2, size: .Small)

iceCream.add(flavors: cone1)
iceCream.add(flavors: cone2)
iceCream.add(flavors: cone3)
iceCream.add(flavors: cone4)




func listTopFlavor() {
    for top in iceCream.flavor {
        if top.flavor.rating >= 4.0 {
            print("Our Top Flavor's are \(top.flavor.name).")
        } else {
            print("The flavor \(top.flavor.name) is our least popular.")
        }
    }
}

listTopFlavor()


func orderCone(cone: IceCreamShop) -> IceCreamShop? {
    let newCone = IceCreamShop(flavor: [], totalSales: .Large)
    
    newCone.add(flavors: cone1)
    newCone.add(flavors: cone2)
    newCone.add(flavors: cone3)
    newCone.add(flavors: cone4)
    
    for thisCone in newCone.flavor {
        
        if thisCone.size.rawValue == 3.99 {
            
            print("Your \(thisCone.flavor.name) icecream with \(thisCone.topping.topping) is \(thisCone.size.rawValue).")
            
        }
    }
    return newCone
}
    
orderCone(cone: IceCreamShop(flavor: [cone1], totalSales: .Large))


let newFlavor = Flavor(name: "Strawberry", rating: 4.5)
let newFlavor1 = Flavor(name: "Coffee", rating: 4.0)
let newFlavor2 = Flavor(name: "Mocha", rating: 3.8)

let sizeArray = [Size.Large, Size.Medium, Size.Small]
let toppingArray = [Topping.init(topping: "Twizzlers"), Topping.init(topping: "M&M's"), Topping.init(topping: "Chocolate Chips")]

let thisNewCone = Cone(flavor: newFlavor, topping: toppingArray[0], size: .Large)
let thisNewCone1 = Cone(flavor: newFlavor1, topping: toppingArray[2], size: .Medium)
let thisNewCone2 = Cone(flavor: newFlavor2, topping: toppingArray[1], size: .Small)

iceCream.add(flavors: thisNewCone)
iceCream.add(flavors: thisNewCone1)
iceCream.add(flavors: thisNewCone2)

listTopFlavor()

let finalCone = Cone(flavor: newFlavor1, topping: toppingArray[1], size: .Medium)


