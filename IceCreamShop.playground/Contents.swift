// Malik Barnes

struct Flavor {
    var name: String
    var rating: UInt
}

enum Size: Double {
    case small = 1.99
    case medium = 2.49
    case large = 2.99
}

struct Cone {
    let flavor: Flavor
    let size: Size
    
    func eat() {
        print("Wow! I love \(flavor.name)!")
    }
}

let chocolateChip = Flavor(name: "Chocolate Chip", rating: 4)
let mintChocolateChip = Flavor(name: "Mint Chocolate Chip", rating: 7)
let rainbowSherbet = Flavor(name: "Rainbow Sherbet", rating: 1)
let  chocolateChipCookieDough = Flavor(name: "Chocolate Chip Cookie Dough", rating: 9)
let vanilla = Flavor(name: "Vanilla", rating: 3)
let chocolate = Flavor(name: "Chocolate", rating: 4)
let strawberry = Flavor(name: "Strawberry", rating: 6)

enum Toppings: String {
    case sprinkles = "Sprinkles"
    case oreoCrumbles = "Oreo Crumbles"
    case hotFudge = "Hot Fudge"
    case caramel = "Caramel"
    case whippedCream = "Whipped Cream"
    case brownieBites = "Brownie Bites"
}

class IceCreamShop {
    var flavors: [Flavor]
    var coneSize: [Size]
    
    init(flavors: [Flavor], coneSize: [Size]) {
        self.flavors = flavors
        self.coneSize = coneSize
    }

   func listTopFlavors() {
    var topFlavorsList = [Flavor]()
    
    for flavor in flavors {
        if flavor.rating >= 4 {
            topFlavorsList.append(flavor)
        }
       }
    print("Our top flavors are \(topFlavorsList)")
           // I couldnt figure out how to make it just print out the array of flavor names
   }
    
   var totalSales: Double = 0

    func orderCone(size: Size,flavor: Flavor, toppings: Toppings? ) -> Cone? {
        let newCone = Cone(flavor: flavor, size: size)
        totalSales += size.rawValue

        if let unwrappedTopping = toppings{
            print("Your \(newCone.flavor.name) with \(unwrappedTopping.rawValue) is going to be \(newCone.size.rawValue)")
        } else if toppings == nil {
            print("Your \(newCone.flavor.name) cone is going to be \(size.rawValue)")
        }
        return newCone
    }
    
    let differentSizes: [Size] = [.small, .medium, .large]
    
    let differentToppings: [Toppings] = [.brownieBites, .caramel, .hotFudge, .oreoCrumbles, .sprinkles, .whippedCream]
}
 

let theIceCreamShop = IceCreamShop(flavors: [chocolate, chocolateChip, mintChocolateChip, rainbowSherbet, chocolateChipCookieDough, vanilla, strawberry], coneSize: [.small, .medium, .large])

theIceCreamShop.listTopFlavors()
 
let newConeOrder = theIceCreamShop.orderCone(size: .large, flavor: chocolateChipCookieDough, toppings: .brownieBites)
newConeOrder?.eat()


