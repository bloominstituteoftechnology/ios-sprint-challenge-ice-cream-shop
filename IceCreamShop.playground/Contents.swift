import UIKit

// MARK: - Format Currency
let numberFormatter = NumberFormatter()
numberFormatter.numberStyle = .currency

func formatAsCurrency(_ number: Double) -> String {
    numberFormatter.string(for: number) ?? "Error"
}

// MARK: - Properties
struct Flavor {
    let name: String
    var rating: Double
}

enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}

struct Cone {
    let flavor: Flavor
    let topping: String
    let size: Size
    
    func eat() {
        print("Mmm... I love \(self.flavor.name)!")
    }
}

class IceCreamShop {
    var flavors: [Flavor]
    var sizes: [Size]
    var toppings: [String]
    var totalSales: Double
    
    init(flavors: [Flavor], sizes: [Size], toppings: [String], totalSales: Double = 0.0) {
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
        self.totalSales = totalSales
    }
    
    func listTopFlavors() {
        var printString = "Our top flavors are:"
        for flavor in flavors {
            if flavor.rating > 4.0 {
                printString += "\n -\(flavor.name)"
            }
        }
        
        if printString == "Our top flavors are:" {
            print("Sorry, we have don't have any favorite flavors. They are all gross")
        } else {
            print(printString)
        }
    }
    
    func orderCone(flavor: Flavor, topping: String?, size: Size) -> Cone? {
        let requestedTopping = topping ?? "no topping"
        if toppings.contains(requestedTopping) {
            let newCone = Cone(flavor: flavor, topping: requestedTopping, size: size)
            self.totalSales += size.rawValue
            print("Your \(newCone.flavor.name) ice cream with \(newCone.topping) is \(newCone.size.rawValue)")
            return newCone
        } else {
            print("Sorry, we don't have that topping. Please try again")
            return nil
        }
    }
}


// MARK: - Create Flavors
let chocolateFlavor = Flavor(name: "chocolate", rating: 8.0)
let vanillaFlavor = Flavor(name: "vanilla", rating: 3.5)
let strawberryFlavor = Flavor(name: "strawberry", rating: 4.5)

let myFlavors = [chocolateFlavor, vanillaFlavor, strawberryFlavor]

// MARK: - Create IceCreamShop
let myIceCreamShop = IceCreamShop(flavors: myFlavors,
                                  sizes: [.large, .medium, .small],
                                  toppings: ["chocolate sauce", "cherries", "gummy worms"])

// MARK: - List Top Flavors
myIceCreamShop.listTopFlavors()

// MARK: - Create Cone
let myNewCone = myIceCreamShop.orderCone(flavor: chocolateFlavor,
                                         topping: "gummy worms",
                                         size: .large)

// MARK: - Eat Cone
myNewCone?.eat()

// MARK: - Print Total Sales
print(formatAsCurrency(myIceCreamShop.totalSales))

