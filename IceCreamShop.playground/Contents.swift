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
    let flavor: String
    let topping: String?
    let size: Size
}

var chocolateCone = Cone(flavor: "Chocolate", topping: nil, size: .medium)

func eat()
{
    print("Mmmm! I love \(chocolateCone.flavor)")
}

eat()

class IceCreamShop
{
    var flavors: [Flavor]
    var sizes: Size
    var toppings: String?
    
    var totalSales: Double?
    
    init(flavors: [Flavor], sizes: Size, toppings: String?, totalSales: Double?) {
        self.flavors = []
        self.sizes = sizes
        self.toppings = toppings
        self.totalSales = totalSales
    }
    
    func listTopFlavors() -> [Flavor]
    {
        let listOfFlavors = [Flavor(name: "Vanilla", rating: 3),
                             Flavor(name: "Chocolate", rating: 5),
                             Flavor(name: "Strawberry", rating: 3)]
        
        for flavors in listOfFlavors
        {
            print("Our top flavors are \(flavors.name)")
        }
        
        return flavors
    }
    
    func orderCone(customerFlavor: String, customerToppings: String?, customerSize: Size) -> Cone?
    {
        let firstCustomerCone = Cone(flavor: customerFlavor, topping: customerToppings, size: customerSize)
        firstCustomerCone += totalSales
        return coneOrdered
    }
    
}


let chocolate = Flavor(name: "Chocolate", rating: 5)
let vanilla = Flavor(name: "Vanilla", rating: 3)
let strawberry = Flavor(name: "Strawberry", rating: 4)
let rockyRoad = Flavor(name: "Rocky Road", rating: 4)
let cookieDough = Flavor(name: "Cookie Dough", rating: 5)

let sizeArray : [Size] = []
let toppingArray: [Cone]
