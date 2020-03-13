// IceCreamShop - by Harmony Radley


struct Flavor {
    var name: String
    var rating: Double
}

enum Size: Double {
    case small = 4.99
    case medium = 9.99
    case large = 11.99
}

struct Cone {
    let flavor: Flavor
    let topping: String?
    let size: Size
    
    func eat() {
        print("Mmm! I love \(flavor.name) flavored ice cream!")
    }
}

class IceCreamShop {
    
    var flavors: [Flavor]
    var size: [Size]
    var toppings: [String]
    var totalSales: Double = 0.0
    
    init(flavors: [Flavor], size: [Size], toppings: [String], totalSales: Double) {
        self.flavors = flavors
        self.size = size
        self.toppings = toppings
        self.totalSales = totalSales
    }
    
    func listTopFlavors() {
        
        for flavor in flavors {
            if flavor.rating >= 4.0 {
                
                print("Our top flavors are \(flavor.name)")
                
            }
        }
    }
    
    func orderCone(flavor: Flavor, topping: String?, size: Size) -> Cone? {
        
        let shopsToppings = topping ?? "Not an avaiable topping."
        
        if toppings.contains(shopsToppings) {
            
        let newCone = Cone(flavor: flavor, topping: topping, size: size)
        let price = size.rawValue
        
        totalSales += price
        
        if let unwrappedTopping = topping {
            print("Your \(flavor.name) ice cream with \(unwrappedTopping) is \(size.rawValue)")
            
        } else {
            print("Your \(flavor.name) ice cream is \(size.rawValue)")
        }
            
        return newCone
            
        } else {
            print("I'm sorry, that topping is not available here!")
            return nil
        }
    }
}

// List of Ice cream shops flavors:
let blueMoon = Flavor(name: "blue moon", rating: 0.0)
let cottonCandy = Flavor(name: "cotton candy", rating: 5.0)
let cookiesAndCream = Flavor(name: "cookies & cream", rating: 0.0)
let rockyRoad = Flavor(name: "rocky road", rating: 0.0)
let vanilla = Flavor(name: "vanilla", rating: 1.0)
let chocolate = Flavor(name: "chocolate", rating: 4.0)
let chicken = Flavor(name: "chicken", rating: 5.0)

let allFlavorsOffered = [blueMoon,
                         cottonCandy,
                         cookiesAndCream,
                         rockyRoad,
                         vanilla,
                         chocolate,
                         chicken]

let sizes: [Size] = [.small,
                     .medium,
                     .large]

let toppings: [String] = ["sprinkles",
                          "cherry",
                          "whipped cream",
                          "chocolate chips",
                          "oreos",
                          "bacon"]

let newIceCreamShop = IceCreamShop(flavors: allFlavorsOffered,
                                   size: sizes,
                                   toppings: toppings,
                                   totalSales: 0)

newIceCreamShop.listTopFlavors()

let myNewCone = newIceCreamShop.orderCone(flavor: chicken, topping: "bacon", size: .medium)

myNewCone?.eat()

print("\(newIceCreamShop.totalSales) That's expensive!")

