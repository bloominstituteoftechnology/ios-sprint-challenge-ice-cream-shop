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
    let topping: String
    let size: Size

    func eat() {
        print("Mmm! I Love \(flavor)")
    }
}

class IceCreamShop {
    let menu = [Cone]()
    
}


// Flavors
var flavorsAvailable = [Flavor]()

var flavorOne = Flavor(name: "Vanilla", rating: 3)
flavorsAvailable.append(flavorOne)

var flavorTwo = Flavor(name: "Neapolitan", rating: 3)
flavorsAvailable.append(flavorTwo)

var flavorThree = Flavor(name: "Moose Tracks", rating: 3)
flavorsAvailable.append(flavorThree)

var flavorFour = Flavor(name: "Cherry", rating: 2)
flavorsAvailable.append(flavorFour)

var flavorFive = Flavor(name: "Strawberry", rating: 3)
flavorsAvailable.append(flavorFive)

var flavorSix = Flavor(name: "Birthday Cake", rating: 4)
flavorsAvailable.append(flavorSix)

var flavorSeven = Flavor(name: "Buttered Pecan", rating: 5)
flavorsAvailable.append(flavorSeven)

var flavorEight = Flavor(name: "Moonshine Butterscotch (Must be 21 years of Age)", rating: 5)
flavorsAvailable.append(flavorEight)

var flavorNine = Flavor(name: "Cookies & Cream", rating: 5)
flavorsAvailable.append(flavorNine)

var flavorTen = Flavor(name: "Chocolate", rating: 4)
flavorsAvailable.append(flavorTen)

var flavorEleven = Flavor(name: "Coffee", rating: 4)
flavorsAvailable.append(flavorEleven)

var flavorTwelve = Flavor(name: "Banana", rating: 5)
flavorsAvailable.append(flavorTwelve)





