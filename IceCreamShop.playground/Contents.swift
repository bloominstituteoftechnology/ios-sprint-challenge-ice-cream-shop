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


enum FlavorRating: Double {
    case vanillaRating = 3.0
    case chocolateRating = 2.0
    case strawberryRating = 7.0
    case rockyRoad = 8.0
}




class IceCreamShop {
    let flavor: iceCreamFlavors
    let toppings: iceCreamToppings
    let coneSize: Size
    let totalSales: Double
    
    init(flavor: iceCreamFlavors, toppings: iceCreamToppings, coneSize: Size, totalSales: Double) {
        self.flavor = flavor
        self.toppings = toppings
        self.coneSize = coneSize
        self.totalSales = totalSales
    }
}



struct Flavor {
    let name: String
    var cones: [Cone]
}



struct Cone {
    let size: Size
    let flavor: iceCreamFlavors
    let flavorRating: FlavorRating
    let topping: iceCreamToppings
}

func eat() {
    print("Mmm! I love \(iceCreamFlavors.vanilla.rawValue)!")
}
eat()



var newCone = Flavor(name: "Vanilla", cones: [])

let cone1 = Cone(size: .small, flavor: .vanilla, flavorRating: .vanillaRating, topping: .fudge)
let cone2 = Cone(size: .medium, flavor: .rockyroad, flavorRating: .chocolateRating, topping: .gummybears)
let cone3 = Cone(size: .large, flavor: .chocolate, flavorRating: .rockyRoad, topping: .peanuts)
let cone4 = Cone(size: .extraLarge, flavor: .strawberry, flavorRating: .strawberryRating, topping: .sprinkles)


newCone.cones.append(cone1)
newCone.cones.append(cone2)
newCone.cones.append(cone3)
newCone.cones.append(cone4)





extension FlavorRating: CaseIterable {}

func listTopFlavors() {
    for flavor in FlavorRating.allCases {
        if flavor.rawValue > 4 {
            print("Our top flavors are \(flavor)") }
    }
}

listTopFlavors()




func orderCone(size: Size?, flavor: iceCreamFlavors?, rating: FlavorRating?, topping: iceCreamToppings?) {
    if let size = size,
       let flavor = flavor,
       let rating = rating,
       let topping = topping {
        
       let totalSale = size.rawValue

       print("\n I'd like a \(size) cone with two scoops of \(flavor) ice cream with some \(topping) on top")
       print("I like \(flavor) best because it has rating of \(rating.rawValue)")
       print("That comes out to $\(totalSale)")
     } else {
       print("Error: Missing the size, flavor, rating, or topping")
    }
}

orderCone(size: .small, flavor: .chocolate, rating: .chocolateRating, topping: .gummybears)

orderCone(size: .medium, flavor: .vanilla, rating: .vanillaRating, topping: .fudge)




