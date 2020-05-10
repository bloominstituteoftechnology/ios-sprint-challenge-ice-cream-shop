import UIKit

struct Flavor {
    let name: String
    let rating: Int
}

enum Size: Double  {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}

var selectedSize: String

struct Cone {
    let flavor : Flavor
    let topping: String?
    let sizes: Size
    
    func eat() {
        print("Mmm! I Love \(flavor)")
    }
}

class IceCreamShop {
    let menu: [Cone]
    let totalSales: Double
    
    init(ourMenu: [Cone], sales: Double) {
        self.menu = ourMenu
        self.totalSales = sales
    }
}

// Flavors
var flavors = [Flavor]()

var flavorOne = Flavor(name: "Vanilla", rating: 3)
flavors.append(flavorOne)

var flavorTwo = Flavor(name: "Neapolitan", rating: 3)
flavors.append(flavorTwo)

var flavorThree = Flavor(name: "Moose Tracks", rating: 3)
flavors.append(flavorThree)

var flavorFour = Flavor(name: "Cherry", rating: 2)
flavors.append(flavorFour)

var flavorFive = Flavor(name: "Strawberry", rating: 3)
flavors.append(flavorFive)

var flavorSix = Flavor(name: "Birthday Cake", rating: 4)
flavors.append(flavorSix)

var flavorSeven = Flavor(name: "Buttered Pecan", rating: 5)
flavors.append(flavorSeven)

var flavorEight = Flavor(name: "Moonshine Butterscotch (Must be 21 years of Age)", rating: 5)
flavors.append(flavorEight)

var flavorNine = Flavor(name: "Cookies & Cream", rating: 5)
flavors.append(flavorNine)

var flavorTen = Flavor(name: "Chocolate", rating: 4)
flavors.append(flavorTen)

var flavorEleven = Flavor(name: "Coffee", rating: 4)
flavors.append(flavorEleven)

var flavorTwelve = Flavor(name: "Banana", rating: 5)
flavors.append(flavorTwelve)

func listTopFlavors() {
    print("OUR TOP FLAVORS ARE:")
    for index in flavors {
        if index.rating >= 4 {
            print(index.name)
        }
    }
}


func orderCone(orderedFlavor: Flavor, orderedTopping: String?, orderedSize: Size) -> Cone? {
    let order = Cone(flavor: orderedFlavor, topping: orderedTopping, sizes: orderedSize)

    return order
}
