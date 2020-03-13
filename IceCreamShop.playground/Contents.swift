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
        print("My favorite flavor is \(flavor.name)!")
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
        
        let newCone = Cone(flavor: flavor, topping: topping, size: size)
        let price = size.rawValue
        
        totalSales += price
        
        if let unwrappedTopping = topping {
            print("Your \(flavor.name) ice cream with \(unwrappedTopping) is \(size.rawValue)")
        } else {
            print("Your \(flavor.name) ice cream is \(size.rawValue)")
        }
        
        return newCone
        
    }
    
}

// List of Ice cream shops flavors:
let blueMoon = Flavor(name: "Blue Moon", rating: 0.0)
let cottonCandy = Flavor(name: "Cotton Candy", rating: 5.0)
let cookiesAndCream = Flavor(name: "Cookies & Cream", rating: 0.0)
let rockyRoad = Flavor(name: "Rocky Road", rating: 0.0)
let vanilla = Flavor(name: "Vanilla", rating: 0.0)
let chocolate = Flavor(name: "Chocolate", rating: 4.0)

let allFlavorsOffered = [blueMoon,
                         cottonCandy,
                         cookiesAndCream,
                         rockyRoad,
                         vanilla,
                         chocolate]

let sizes: [Size] = [.small,
                     .medium,
                     .large]

let toppings: [String] = ["Sprinkles",
                          "Cherry",
                          "Whipped Cream",
                          "Chocolate Chips",
                          "Oreos"]

let newIceCreamShop = IceCreamShop(flavors: allFlavorsOffered,
                                   size: sizes,
                                   toppings: toppings,
                                   totalSales: 0)

newIceCreamShop.listTopFlavors()

let myNewCone = newIceCreamShop.orderCone(flavor: blueMoon, topping: "Sprinkles", size: .medium)

myNewCone?.eat()

print("\(newIceCreamShop.totalSales) That's expensive!")













