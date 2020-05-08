
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


enum SizeDescription: String {
    case kidsCup = "Kids Cup with Kids Scoop"
    case smallCup = "Small Cup with 1 Scoop"
    case mediumCup = "Medium Cup with 2 Scoops"
    case largeCup = "Large Cup with 3 Scoops"
    case kidsCone = "Regular Cone with Kids Cone"
    case smallCone = "Regular Cone with 1 Scoop"
    case mediumCone = "Regular Cone with 2 Scoops"
    case largeCone = "Regular Cone with 3 Scoops"
    case waffleCone = "Waffle Cone with 3 Large Scoops"
}

struct Cone {
    let flavor: Flavor
    let topping: String
    let sizeDescription: SizeDescription
    let size: Size
}

//func eat() {
//    print("Mmm! I love \(flavor)!")
//}

class IceCreamShop {
    let iceCreamFlavor: [Cone]
    let iceCreamSize : [Cone]
    let iceCreamToppings : String
    var totalSales: Double
    
    init(flavor: [Cone], description: [Cone], toppings: String, sales: Double){
        self.iceCreamFlavor = flavor
        self.iceCreamSize = description
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



//var iceCreamShop = IceCreamShop(flavor: flavor , description: <#T##[Cone]#>, toppings: <#T##String#>, sales: <#T##Double#>)

