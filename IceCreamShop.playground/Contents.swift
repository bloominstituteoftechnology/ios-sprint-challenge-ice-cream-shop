// This is th beginning of the Sprint Challenge


enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
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
    let iceCreamFlavors: [Flavor]
    let coneSize: Size

    init(iceCreamFlavors: String, coneSize: Size) {
        self.iceCreamFlavors = []
        self.coneSize  = coneSize
    }
    func eat() { print("Mmm! I love <flavor here>!") }
}


struct Flavor {
    let rating: Int
    let iceCreamToppings: iceCreamToppings
    let iceCreamFlavors : iceCreamFlavors

    init(rating: Int, iceCreamToppings: iceCreamToppings, iceCreamFlavors: iceCreamFlavors) {
        self.rating = rating
        self.iceCreamToppings = iceCreamToppings
        self.iceCreamFlavors
    }
}


let myCone = Cone(iceCreamFlavors: [], coneSize: <#T##Size#>)


let flavor1 = Flavor(rating: 5, iceCreamToppings: .fudge, iceCreamFlavors: .vanilla)
let flavor2 = Flavor(rating: 6, iceCreamToppings: .gummybears, iceCreamFlavors: .rockyroad)
let flavor3 = Flavor(rating: 7, iceCreamToppings: .peanuts, iceCreamFlavors: .chocolate)
let flavor4 = Flavor(rating: 10, iceCreamToppings: .sprinkles, iceCreamFlavors: .strawberry)


myCone.iceCreamFlavors.append(flavor1)
myCone.iceCreamFlavors.append(flavor2)
myCone.iceCreamFlavors.append(flavor3)
myCone.iceCreamFlavors.append(flavor4)



