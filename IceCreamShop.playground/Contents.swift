
struct Flavor {
    var name: String
    var rating: Double
}

enum Size: Double {
    case small = 1.99
    case medium = 2.99
    case large = 3.99
}

struct Cone {
    let flavor: Flavor
    let topping: String?
    let size: Size
    
    func eat() {
        print(" My favorite flave is \(flavor.name)!")
    }
}


class IceCreamShop {
    
    var flavors: [Flavor]
    var size: [Size]
    var toppings: [String]
    var totalSales: Double
    
    init(flavors: [Flavor], size: [Size], toppings: [String], totalSales: Double) {
        self.flavors = flavors
        self.size = size
        self.toppings = toppings
        self.totalSales = totalSales
    }
    
    
    func listTopFlavors() {
        var topFlavors = ""
        
        for flavor in flavors {
            if flavor.rating > 4.0 {
                
                topFlavors += flavor.name
                
                print("Our top flavors are \(topFlavors)")
                
            }
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




let myFlavor = Flavor(name: "Vanilla", rating: 3.5)
let carlsFlavor = Flavor(name: "Chocolate", rating: 2.3)
let momsFlavor = Flavor(name: "Cherry", rating: 4.0)

let sizes: [Size] = [.small, .medium, .large]
let toppings: [String] = ["sprinkles", "cherry", "whipped cream"]

let newIceCreamShop = IceCreamShop(flavors: [myFlavor], size: sizes, toppings: toppings, totalSales: 0)

newIceCreamShop.listTopFlavors()

newCone?.eat()

print(newIceCreamShop.totalSales)
