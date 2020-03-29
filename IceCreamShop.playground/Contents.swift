//Create bike shop harley


//: # 1.
struct Flavor {
    let name: String
    let rating: Double
}


//: # 2.
enum Size: Double {
    case small = 3.99
    case meidum = 5.99
    case large = 7.99
}

//: # 3.
struct Cone {
    let flavors: Flavor
    let topping: String?
    let size: Size
    
    func eat() {
        print("Mmm! I love \(flavors.name)!")
    }
}

//: #4.
class IceCreamShop {
    var flavors: [Flavor]
    var sizes: [Size]
    var toppings: [String]
    var totalSales: Double
    
    init(flavors: [Flavor], sizes: [Size], toppings: [String], totalSales: Double) {
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
        self.totalSales = totalSales
    }
    //: #5.
    func listTopFlavors() {
        for flavors in flavors {
            if flavors.rating >= 4.0 { // .syntex calling for subcagetory
                print("Our top flavors are \(flavors.name).")
            }
        }
    }
    //: #6.
    func orderCone(flavors: Flavor, topping: String, size: Size) -> Cone? { // Why and optional? need to look up optional
        let newCone = Cone(flavors: flavors, topping: topping, size: size)
        totalSales += newCone.size.rawValue
        
        if let topping = newCone.topping {
            print("Your \(newCone.flavors.name) ice cream with \(topping) is \(newCone.size)")
        } else {
            print("Your \(newCone.flavors.name) ice cream is \(newCone.size)")
        }
        return newCone
    }
}

//: #7.
let vanilla = Flavor(name: "Vanilla", rating: 5.0)
let chocolate = Flavor(name: "Chocolate", rating: 4.7)
let cookiesCream = Flavor(name: "Cookies Cream", rating: 4.3)
let mintChocolateChip = Flavor(name: "Mint Chocolate Chip", rating: 3.0)
let chocolateChipCookieDough = Flavor(name: "Chocolate Chip Cookie Dough", rating: 4.0)

//: #8.
let newIceCreamCustomer = IceCreamShop(flavors: [vanilla, chocolate, cookiesCream, mintChocolateChip, chocolateChipCookieDough], sizes: [.large, .meidum, .small], toppings: ["Nuts", "Hot Chocolate", "Sprinkles"], totalSales: 1.75)

//: #9.
//topFlavor.listTopFlavors()
newIceCreamCustomer.listTopFlavors()

//: #10.
let myOrder = newIceCreamCustomer.orderCone(flavors: vanilla, topping: "Nuts", size: .large)

//: #11.
myOrder?.eat()

//: #12.
print("Your total order comings down to $\(newIceCreamCustomer.totalSales)")

