// This is th beginning of the Sprint Challenge


enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
    case extraLarge = 6.99
}


enum iceCreamToppings: String {
    case sprinkles = "Sprinkles"
    case fudge = "Hot fudge"
    case peanuts = "Peanuts"
    case gummybears = "Gummy bears"
}


enum iceCreamFlavors: String {
    case vanilla = "Vanilla"
    case chocolate = "Chocolate"
    case strawberry = "Strawberry"
    case rockyroad = "Rocky Road"
}


class IceCreamShop {
    let totalSales: Double

    init(totalSales: Double) {
        self.totalSales = totalSales
    }
}


struct Cone {
    var iceCreamFlavors: [Flavor]

    init(iceCreamFlavors: [Flavor]) {
        self.iceCreamFlavors = iceCreamFlavors
    }
    func eat() { print("Mmm! I love <flavor here>!") }
}


struct Flavor {
    let rating: Int
    let coneSize: Size
    let iceCreamToppings: iceCreamToppings
    let iceCreamFlavors : iceCreamFlavors

    init(rating: Int, coneSize: Size, iceCreamToppings: iceCreamToppings, iceCreamFlavors: iceCreamFlavors) {
        self.rating = rating
        self.coneSize  = coneSize
        self.iceCreamToppings = iceCreamToppings
        self.iceCreamFlavors = iceCreamFlavors
    }
}


var myCone = Cone(iceCreamFlavors: [])


let flavor1 = Flavor(rating: 5, coneSize: .small, iceCreamToppings: .fudge, iceCreamFlavors: .vanilla)
let flavor2 = Flavor(rating: 6, coneSize: .medium, iceCreamToppings: .gummybears, iceCreamFlavors: .rockyroad)
let flavor3 = Flavor(rating: 7, coneSize: .large,  iceCreamToppings: .peanuts, iceCreamFlavors: .chocolate)
let flavor4 = Flavor(rating: 10, coneSize: .extraLarge,  iceCreamToppings: .sprinkles, iceCreamFlavors: .strawberry)


myCone.iceCreamFlavors.append(flavor1)
myCone.iceCreamFlavors.append(flavor2)
myCone.iceCreamFlavors.append(flavor3)
myCone.iceCreamFlavors.append(flavor4)


func listTopFlavors() {
    for flavors in myCone.iceCreamFlavors {
        print("ratings: \(flavors.rating), coneSize: \(flavors.coneSize), iceCreamToppings: \(flavors.iceCreamToppings), iceCreamFlavors: \(flavors.iceCreamFlavors)") }
}

listTopFlavors()

