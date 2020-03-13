struct Flavor {
    let name: String
    let rating: Float
}

enum Size: Double {
    case small = 1.99
    case medium = 2.99
    case large = 3.99
}

struct Cone {
    let flavor: Flavor
    let topping: String
    let size: Size
    
    func eat() {
        print("\(flavor.name)! My favorite!!")
    }
}

class IceCreamShop {
    var flavors: [Flavor]
    var toppings: [String]
    var sizes: [Size]
    var totalSales: Double = 0.0
    
    init(flavors: [Flavor], toppings: [String], sizes: [Size]) {
        self.flavors = flavors
        self.toppings = toppings
        self.sizes = sizes
    }
    
    func listTopFlavors() {
        var flavorString = "Our top flavors are: "
        
        for flavor in flavors {
            if flavor.rating >= 4.0 {
                flavorString.append("\(flavor.name), ")
            }
        }
        print("\(flavorString).")
    }
    
    func orderCone(flavor: Flavor, topping: String?, size: Size) -> Cone? {
        var coneTopping = ""
        
        var orderString = "Your \(flavor.name) ice cream"
        
        if let unwrappedTopping = topping {
            coneTopping = unwrappedTopping
            orderString.append(" with \(unwrappedTopping)")
        }
        
        orderString.append(" is \(size.rawValue), please!")
        print(orderString)
        totalSales += size.rawValue
        
        let newCone = Cone(flavor: flavor, topping: coneTopping, size: size)
        return newCone
    }
}

let vanilla = Flavor(name: "Vanilla", rating: 4.8)
let strawberry = Flavor(name: "Strawberry", rating: 5.0)
let chocolate = Flavor(name: "Chocolate", rating: 4.7)
let butterPecan = Flavor(name: "Butter Pecan", rating: 4.5)
let mintChocolate = Flavor(name: "Mint Chocolate Chip", rating: 3.7)

var shopFlavors = [vanilla, strawberry, chocolate, butterPecan, mintChocolate]

let small = Size.small
let medium = Size.medium
let large = Size.large

let shopSizes = [small, medium, large]

let sprinkles = "Sprinkles"
let cherry = "Cherry"
let whipCream = "Whip Cream"
let walnuts = "Walnuts"

var shopToppings = [sprinkles, cherry, whipCream, walnuts]


var lambdaShop = IceCreamShop(flavors: shopFlavors, toppings: shopToppings, sizes: shopSizes)

lambdaShop.listTopFlavors()

let firstCone = lambdaShop.orderCone(flavor: vanilla, topping: sprinkles, size: medium)

firstCone?.eat()

print(lambdaShop.totalSales)



