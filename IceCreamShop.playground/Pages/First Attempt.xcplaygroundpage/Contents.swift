import UIKit

// : # First Attempt

enum Size: Double {
    case Small = 3.99
    case Medium = 4.99
    case Large = 5.99
}

struct Flavor {
    var name: String
    var rating: Double
}

// Give the struct properties (constants) that hold a flavor, topping (as a String), and size.
// Create a function called eat. It shouldn't have any arguments. It should print a string of text that includes the name of the cone's flavor. For example: "Mmm! I love !"

struct Cone {
    let flavor: Flavor
    let topping: String?
    let size: Size
    
    init(flavor: Flavor, topping: String?, size: Size) {
        self.flavor = flavor
        self.topping = topping
        self.size = size
    
    }


func eat() {
    print("Mmm! I love \(flavor.name)")
    }
}

//Create a class called IceCreamShop.
//An ice cream shop needs a menu, so create variables that hold the various flavors, sizes, and toppings you want to have in your shop.
//Create a variable called totalSales. This will be used to keep track of how much money was made.

class IceCreamShop {
    var flavors: [Flavor]
    var sizes: [Size]
    var toppings: [String]
    var totalSales: Double
    
    init(flavors: [Flavor], sizes: [Size], toppings: [String], totalSales: Double = 0) {
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
        self.totalSales = totalSales
    }
    func listTopFlavors() {
        var topFlavors = ""
        // try with index loop: for i in 0 .. flavors.count
        for flavor in flavors {
            if(flavor.rating >= 4.0) {
                // Add flavor to string
                // if i == flavours.count - 1: , and flavor
                topFlavors += ", \(flavor.name)"
            }
        }
        // Print message with all passing flavors
        print("Our top flavors are\(topFlavors)")
    }
    func orderCone(flavor: Flavor, topping: String?, size: Size) -> Cone? {
        let newCone = Cone(flavor: flavor , topping: topping, size: size)
        self.totalSales += size.rawValue
        
        var message = ""
        
        if let newTopping = newCone.topping {
            message = "Your \(newCone.flavor.name) with \(newTopping) is \(newCone.size)"
        }
        else {
            message = "Your \(newCone.flavor.name) is \(newCone.size)"
        }
        print(message)
        return newCone
    }
}

let flavorList = [Flavor(name: "Vanilla", rating: 4.0),
                 Flavor(name: "Chocolate", rating: 5.0),
                 Flavor(name: "Stawberry", rating: 1.0)]

let sizeListed = [Size.Large,
                  Size.Medium,
                  Size.Small]

let toppingsList = ["Sprinkles",
                    "Oreos",
                    "Nuts"]

let myIceCreamShop = IceCreamShop(flavors: flavorList, sizes: sizeListed, toppings: toppingsList)



myIceCreamShop.listTopFlavors()

let myCone = myIceCreamShop.orderCone(flavor: flavorList[0], topping: toppingsList[1], size: Size.Large)


myCone?.eat()


print(myIceCreamShop.totalSales)




// Format the various strings to account for edge cases, such as if there are no flavors with a rating above 4.0, finishing the last flavor with "and". For example,", , and ", instead of just ", , "
// In the orderCone function, check to make sure the flavor that the person requested exists on the menu.
