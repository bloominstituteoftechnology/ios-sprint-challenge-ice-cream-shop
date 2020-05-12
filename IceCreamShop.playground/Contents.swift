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


enum FlavorRating: Int {
    case vanillaRating = 3
    case chocolateRating = 2
    case strawberryRating = 7
    case rockyRoad = 8
}


class IceCreamShop {
    var coneSizes: [Size]
    var iceCreamFlavors: [Flavor]
    var iceCreamToppings: [Topping]
    var totalSales: Double
    

    init(coneSizes: [Size], iceCreamFlavors: [Flavor], iceCreamToppings: [Topping], totalSales: Double) {
        self.coneSizes = coneSizes
        self.iceCreamFlavors = iceCreamFlavors
        self.iceCreamToppings = iceCreamToppings
        self.totalSales = totalSales
    }
}


struct Cone {
    let coneSizes: Size
    let iceCreamFlavors: iceCreamFlavors
    let iceCreamToppings: iceCreamToppings

    init(coneSizes: Size, iceCreamFlavors: iceCreamFlavors, iceCreamToppings: iceCreamToppings) {
        self.coneSizes = coneSizes
        self.iceCreamFlavors = iceCreamFlavors
        self.iceCreamToppings
    }
    func eat() { print("Mmm! I love \(self.iceCreamFlavors)!") }
}


struct Flavor {
    let name: String
    let rating: FlavorRating

    init(name: String, rating: FlavorRating) {
        self.name = name
        self.rating = rating
    }
}


var myCone = Cone(coneSizes: <#T##Size#>, iceCreamFlavors: <#T##iceCreamFlavors#>, iceCreamToppings: <#T##iceCreamToppings#>)


let flavor1 = Flavor(rating: .vanillaRating, coneSize: .small, iceCreamToppings: .fudge, iceCreamFlavors: .vanilla)
let flavor2 = Flavor(rating: .rockyRoad, coneSize: .medium, iceCreamToppings: .gummybears, iceCreamFlavors: .rockyroad)
let flavor3 = Flavor(rating: .chocolateRating, coneSize: .large,  iceCreamToppings: .peanuts, iceCreamFlavors: .chocolate)
let flavor4 = Flavor(rating: .strawberryRating, coneSize: .extraLarge,  iceCreamToppings: .sprinkles, iceCreamFlavors: .strawberry)


myCone.iceCreamFlavors.append(flavor1)
myCone.iceCreamFlavors.append(flavor2)
myCone.iceCreamFlavors.append(flavor3)
myCone.iceCreamFlavors.append(flavor4)


func listTopFlavors() {
    for flavors in myCone.iceCreamFlavors {
        if flavors.rating.rawValue > 4 {
            print("Our top flavors are \(flavors.iceCreamFlavors)") }
    }
}

listTopFlavors()



func orderCone(size: Size?, flavor: iceCreamFlavors?, topping: iceCreamToppings?) {
    if let size = size,
       let flavor = flavor,
       let topping = topping {
        
       print("Customer1: I'd like a \(size) cone with two scoops of \(flavor) ice cream with some \(topping) on top")
 //      print("Vendor: Sounds good bro, your ice cream cone will cost \(size.rawValue)")
        
     } else {
       print("Error: Missing the size, flavor, or topping")
    }
}
orderCone(size: .small, flavor: .chocolate, topping: .gummybears)
orderCone(size: .medium, flavor: .rockyroad, topping: .fudge)




