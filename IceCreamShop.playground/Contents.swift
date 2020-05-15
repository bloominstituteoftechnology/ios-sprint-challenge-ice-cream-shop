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



class Flavor {
    let name: String
    let rating: FlavorRating

    init(rating: FlavorRating) {
        self.name = name
        self.rating = rating
    }
}



class Cone {
    let size: Size
    let topping: iceCreamToppings
    let flavor: iceCreamFlavors
    var cones: [Cone]
    
    init(coneSize: Size, cones: [Cone]) {
        self.cones = cones
    }
}



var newCone = Cone(coneSize: <#T##Size#>, coneFlavor: iceCreamFlavors, coneToppings: iceCreamTopping, cones: [])

let cone1 = Cone(coneSize: .small, coneFlavor: .vanilla, iceCreamToppings: .fudge)
let cone2 = Cone(coneSize: .medium, coneFlavor: .rockyroad, iceCreamToppings: .gummybears)
let cone3 = Cone(coneSize: .large, coneFlavor: .chocolate, iceCreamToppings: .peanuts)
let cone4 = Cone(coneSize: .extraLarge, coneFlavor: .strawberry, iceCreamToppings: .sprinkles)


newCone.iceCreamFlavors.append(cone1)
newCone.iceCreamFlavors.append(cone2)
newCone.iceCreamFlavors.append(cone3)
newCone.iceCreamFlavors.append(cone4)





extension FlavorRating: CaseIterable {}

func listTopFlavors() {
    for flavor in FlavorRating.allCases {
        if flavor.rawValue > 4 {
            print("Our top flavors are \(flavor)") }
    }
}

listTopFlavors()




func orderCone(size: Size?, flavor: iceCreamFlavors?, topping: iceCreamToppings?) {
    if let size = size,
       let flavor = flavor,
       let topping = topping {
        
       let totalSale = size.rawValue
        
       print("Customer1: I'd like a \(size) cone with two scoops of \(flavor) ice cream with some \(topping) on top")
       print("That comes out to $\(totalSale)")
     } else {
       print("Error: Missing the size, flavor, or topping")
    }
}

orderCone(size: .small, flavor: .chocolate, topping: .gummybears)
*/
