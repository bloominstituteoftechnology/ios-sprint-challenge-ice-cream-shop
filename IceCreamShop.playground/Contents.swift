
// Norlan Tibanear
// Sprint Challenge Ice Cream Shop

import UIKit


struct Flavor {
    var name: String
    var rating: Double
}

enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}

struct Cone {
    let flavor: Flavor
    let topping: String?
    let size: Size
    
    func eat() {
        print("Mmm! I love! \(flavor.name)")
    }
}

// 4 Create class called IceCreamShop

class IceCreamShop {
    var flavors: [Flavor]
    var toppings: [String?]
    var sizes: [Size]
    var totalSales: Double
    
    init(flavors: [Flavor], toppings: [String?], sizes: [Size], totalSales: Double) {
        self.flavors = flavors
        self.toppings = toppings
        self.sizes = sizes
        self.totalSales = totalSales
    }
    
    
    // 5
    
    func listTopFlavors() {
        
        let messageString = "Our top flavors are:"
        print(messageString)
        var topFlavors: [String] = []
        
        for bestFlavors in flavors {
            
            if bestFlavors.rating >= 4 {
                topFlavors.append(bestFlavors.name)
            }
        }
        let list = topFlavors.joined(separator: ", ")
        print(list)
        
    } // END
    
    
    // 6
    
    func orderCone(flavor: Flavor, topping: String?, size: Size) -> Cone? {
        
        let myCone = Cone(flavor: flavor, topping: topping, size: size)
        totalSales += myCone.size.rawValue
        
        if myCone.topping != nil {
            print("Your \(myCone.flavor) ice cream with \(myCone.topping ?? "") is \(myCone.size.rawValue)")
        } else {
            print("Your \(myCone.flavor) ice cream is \(myCone.size.rawValue)")
        }
        
        return myCone
    }// END
    
    
} // END Class IceCreamShop


// 7

// List Of Flavors & Ratings
let vanilla = Flavor(name: "Vanilla", rating: 5)
let mint = Flavor(name: "Mint", rating: 3)
let rockyRoad = Flavor(name: "Rocky Road", rating: 7)
let butterPecan = Flavor(name: "Butter Pecan", rating: 2)
let chocolate = Flavor(name: "Chocolate", rating: 6)
let coffee = Flavor(name: "Coffee", rating: 5)
let strawberry = Flavor(name: "Strawberry", rating: 6)
let neapolitan = Flavor(name: "Neapolitan", rating: 2)
let almond = Flavor(name: "Almond", rating: 3)


var sizeOrder: [Size] = [.small, .medium, .large]

var toppingsOrder: [String?] = ["Ships", "Peanuts", "Sprinkles", "Syrup"]


// 8

let newIceCream = IceCreamShop(flavors: [vanilla, mint, rockyRoad, butterPecan, chocolate, coffee, strawberry, neapolitan, almond], toppings: toppingsOrder, sizes: sizeOrder, totalSales: 0.0)


// 9

newIceCream.listTopFlavors()


// 10

let coneOrderOne = newIceCream.orderCone(flavor: vanilla, topping: "Sprinkles", size: .medium)
let coneOrderTwo = newIceCream.orderCone(flavor: chocolate, topping: nil, size: .large)
let coneOrderThree = newIceCream.orderCone(flavor: coffee, topping: "Peanuts", size: .small)

// 11

coneOrderOne?.eat()
coneOrderTwo?.eat()
coneOrderThree?.eat()


// 12

print(newIceCream.totalSales)
