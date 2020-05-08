
struct Flavor {
    let name: String
    let rating: Int
}

enum Size: Double {
    case kidsCup = 2.49
    case smallCup = 2.99
    case mediumCup = 3.99
    case largeCup = 4.99
    case kidsCone = 2.69
    case smallCone = 3.09
    case mediumCone = 4.09
    case largeCone = 5.09
    case waffleCone = 5.49
}

struct Cone {
    let flavor: Flavor
    let topping: String
    let size: Size
}

//func eat() {
//    print("Mmm! I love \(flavor)!")
//}

class IceCreamShop {
    let iceCreamFlavor: [Flavor]
    let iceCreamCone : [Cone]
    let iceCreamToppings : String
    var totalSales: Double
    
    
    init(flavor: [Flavor], price: [Cone], toppings: String, sales: Double){
        self.iceCreamFlavor = flavor
        self.iceCreamCone = price
        self.iceCreamToppings = toppings
        self.totalSales = sales
    }
}

var flavors = [Flavor]()

let flavorOne = Flavor(name: "Neapolitan", rating: 3)
flavors.append(flavorOne)

let flavorTwo = Flavor(name: "Moose Tracks", rating: 4)
flavors.append(flavorTwo)

let flavorThree = Flavor(name: "Strawberry", rating: 4)
flavors.append(flavorThree)

let flavorFour = Flavor(name: "Birthday Cake", rating: 4)
flavors.append(flavorFour)

let flavorFive = Flavor(name: "Buttered Pecan", rating: 5)
flavors.append(flavorFive)

let flavorSix = Flavor(name: "Chocolate Chip Cookie Dough", rating: 4)
flavors.append(flavorSix)

let flavorSeven = Flavor(name: "Mint Chocolate Chip", rating: 2)
flavors.append(flavorSeven)

let flavorEight = Flavor(name: "Cookies & Cream", rating: 4)
flavors.append(flavorEight)

let flavorNine = Flavor(name: "Chocolate", rating: 2)
flavors.append(flavorNine)

let flavorTen = Flavor(name: "Vanilla", rating: 4)
flavors.append(flavorTen)

let flavorEleven = Flavor(name: "Coffee", rating: 4)
flavors.append(flavorEleven)

let flavorTwelve = Flavor(name: "Banana", rating: 5)
flavors.append(flavorTwelve)

func listTopFlavors() {
    print("OUR TOP FLAVORS ARE:")
    for i in flavors {
        if i.rating >= 4 {
            print(i.name)
        }
    }
}

(listTopFlavors())


//var iceCreamShop = IceCreamShop(flavor: flavors, price: <#T##[Cone]#>, toppings: String, sales: String)

