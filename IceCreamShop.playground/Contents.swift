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
    case straawberry = "Strawberry"
    case rockyroad = "Rocky Road"
}


class IceCreamShop {
    let coneSize: Size
    let iceCreamFlavors: String
    let iceCreamToppings: iceCreamToppings
    let totalSales: Double

    init(coneSize: Size, iceCreamFlavors: String, iceCreamToppings: iceCreamToppings, totalSales: Double) {
        self.coneSize = coneSize
        self.iceCreamFlavors = iceCreamFlavors
        self.iceCreamToppings = iceCreamToppings
        self.totalSales = totalSales
    }
}


struct Cone {
    let iceCreamFlavors: [Flavor]
    let coneSize: Size
    let iceCreamtoppings: iceCreamToppings

    init(iceCreamFlavors: String, coneSize: Size, iceCreamToppings: iceCreamToppings) {
        self.iceCreamFlavors = iceCreamFlavors
        self.coneSize  = coneSize
        self.iceCreamtoppings = iceCreamToppings
    }
    func eat() { print("Mmm! I love <flavor here>!") }
}


struct Flavor {
    let name: String
    let rating: Int

    init(name: String, rating: Int) {
        self.name = name
        self.rating = rating
    }
}


let myCone = Cone(iceCreamFlavors: [], coneSize: <#T##Size#>, iceCreamToppings: iceCreamToppings)

let flavor1 = Flavor(name: "Vanilla", rating: 5)


