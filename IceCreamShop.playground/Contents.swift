import UIKit

struct Flavor {
    let name: String
    let rating: Int
}

enum Size: Double  {
    case small = 3.99
    case medium = 5.49
    case large = 6.99
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
    let flavors: [String]
    let sizes: String
    let toppings: String
    
    init(flavors: String, size: String, toppings: String) {
        self.flavors = flavors
        self.sizes = size
        self.toppings = toppings
    }
}

var totalSales: Double = 0.00

var flavors = [Flavor]()
var selectedFlavor = ""

func listTopFlavors() {
    print("OUR TOP FLAVORS ARE:")
    for index in flavors {
        if index.rating >= 4 {
            print(index.name)
        }
    }
}

func orderCone(orderedFlavor: Flavor, orderedTopping: String?, orderedSize: Size) -> Cone? {
    let conePrice = orderedSize.rawValue
    let flavor = orderedFlavor.name
    selectedFlavor = flavor
    totalSales += conePrice
    if orderedTopping != nil {
        print("Your \(flavor) ice cream cone with \(orderedTopping!) is $\(totalSales)")
    }else {
        print("Your \(flavor) ice cream cone is $\(totalSales).")
    }
    let newCone = Cone(flavor: orderedFlavor, topping: orderedTopping, sizes: orderedSize)
    return newCone
}

// Flavors

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


// Toppings

let toppings = ["Hot Fudge","Sprinkles","Caramel","Oreos","Peanut Butter Cups","Cookie Dough","Whipped Cream","Hard Chocolate Coating","Melted Marshmallows","Cereal","Nuts","Fruit"]

let sizes = ["small", "medium", "large"]

listTopFlavors()

//let iceCreamShop = IceCreamShop(flavors: flavors, size: sizes, toppings: toppings)


