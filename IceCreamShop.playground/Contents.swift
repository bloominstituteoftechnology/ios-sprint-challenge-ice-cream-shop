// James McDougall

import UIKit
import Foundation

struct Flavor
{
    var name: String
    var rating: Int
}

enum Size: Double
{
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}

struct Cone
{
    let flavor: Flavor
    let topping: String?
    let size: Size
    
    func eat()
    {
        print("Mmmm! I love \(flavor)")
    }
}

let rockyRoad: Flavor = Flavor(name: "Rocky Road", rating: 4)
let chocolateChip: Flavor = Flavor(name: "Chocolate Chip", rating: 5)
let mintChoclateChip: Flavor = Flavor(name: "Mint Chocolate Chip", rating: 3)
let brownieFudge: Flavor = Flavor(name: "Brownie Fudge", rating: 4)
let cookieDough: Flavor = Flavor(name: "Cookie Dough", rating: 5)

let flavorArray = [rockyRoad, chocolateChip, mintChoclateChip, brownieFudge, cookieDough]

let flavorSize1: Size = .large
let flavorSize2: Size = .medium
let flavorSize3: Size = .small
let flavorSize4: Size = .medium
let flavorSize5: Size = .large

let sizeArray = [flavorSize1, flavorSize2, flavorSize3, flavorSize4, flavorSize5]
let toppingsArray = ["Sprinkles", "Fudge", "Gummy Bears", "Coconut", "Bannanas"]

var chocolateCone = Cone(flavor: brownieFudge, topping: nil, size: .medium)
chocolateCone.eat()

class IceCreamShop
{
    var flavors: [Flavor]
    var size: Size
    var toppings: String?
    var totalSales: Double
    
    init(flavors: [Flavor], size: Size, toppings: String?, totalSales: Double)
    {
        self.flavors = []
        self.size = size
        self.toppings = toppings
        self.totalSales = totalSales
    }
    
    func listTopFlavors()
    {
        let listOfFlavors = [Flavor(name: "Vanilla", rating: 3),
                             Flavor(name: "Chocolate", rating: 5),
                             Flavor(name: "Strawberry", rating: 3)]
        
        for flavors in listOfFlavors
        {
            print("Our top flavors are \(flavors.name)")
        }
    }
    
    func orderCone(customerFlavor: Flavor, customerTopping: String?, customerSize: Size) -> Cone?
    {
        let customerCone = Cone(flavor: customerFlavor, topping: customerTopping, size: customerSize)
        if let purchasedCone = customerTopping
        {
            print("Your \(customerFlavor) with \(purchasedCone) is a \(customerSize) which is \(customerSize.rawValue)")
        }
        else
        {
            print("Your \(customerFlavor) is a \(customerSize) which is \(customerSize.rawValue)")
        }
        totalSales += customerCone.size.rawValue
        return customerCone
    }
}



let iceCreamShop = IceCreamShop(flavors: flavorArray, size: .medium, toppings: "Sprinkles", totalSales: Size.medium.rawValue)

let customerCone = Cone(flavor: mintChoclateChip, topping: "Bannanas", size: .medium)

iceCreamShop.listTopFlavors()
iceCreamShop.orderCone(customerFlavor: cookieDough, customerTopping: "Fudge", customerSize: .large)

var myCone = iceCreamShop.orderCone(customerFlavor: chocolateChip, customerTopping: nil, customerSize: .large)


