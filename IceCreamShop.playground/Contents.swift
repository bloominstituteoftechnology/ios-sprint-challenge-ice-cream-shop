struct Flavor {
    let name: String
    let rating: Double
}

let chocolate = Flavor(name: "Chocolate", rating: 5.0)
let vanilla = Flavor(name: "Vanilla", rating: 4.5)
let cookiesNCream = Flavor(name: "Cookies'n'Cream", rating: 5.0)
let rockyRoad = Flavor(name: "Rocky Road", rating: 3.5)
let butterscotch = Flavor(name: "Butterscotch", rating: 4.0)
let mintChocolate = Flavor(name: "Mint Chocolate", rating: 3.0)
let frenchVanilla = Flavor(name: "French Vanilla", rating: 5.0)
let grasshopper = Flavor(name: "Grasshopper", rating: 3.0)
let strawberry = Flavor(name: "Strawberry", rating: 5.0)
let raspberry = Flavor(name: "Raspberry", rating: 3.7)

enum Size: Double {
    case small = 3.99
    case medium = 4.49
    case large = 4.99
}

struct Cone {
    let flavor: Flavor
    let topping: String?
    let size: Size
    
    func eat() {
        print("Mmm! I love \(flavor)!")
    }
}

class IceCreamShop {
    var totalSales: Double
    var flavorOptions: [Flavor]
    
    init() {
        totalSales = 0
        flavorOptions = []
    }
    
    func listTopFlavors() {
        var topFlavString = "Our top flavors are:"
        for flavor in flavorOptions {
            if flavor.rating >= 4.0 {
                topFlavString = "\(topFlavString) \(flavor.name),"
            }
        }
        print(topFlavString)
    }

    func orderCone(flavor: Flavor, topping: String? = nil, size: Size) -> Cone? {
        let newCone = Cone(flavor: flavor, topping: topping, size: size)
        totalSales = totalSales + newCone.size.rawValue
        var orderString = ""
        if let unwrappedTopping = topping {
            orderString = "Your \(newCone.size) \(newCone.flavor.name) ice cream with \(unwrappedTopping) is \(newCone.size.rawValue)."
        } else {
            orderString = "Your \(newCone.size) \(newCone.flavor.name) ice cream is \(newCone.size.rawValue)."
        }
        print(orderString)
        return newCone
    }
}

let kaysCreamery = IceCreamShop()
kaysCreamery.flavorOptions = [chocolate, vanilla, cookiesNCream, rockyRoad, butterscotch, mintChocolate, frenchVanilla, grasshopper, strawberry, raspberry]
kaysCreamery.listTopFlavors()
kaysCreamery.orderCone(flavor: chocolate, topping: "Chocolate Chips", size: .large)
kaysCreamery.orderCone(flavor: vanilla, size: .small)
kaysCreamery.orderCone(flavor: strawberry, topping: "Mini-Marshmallows", size: .medium)
