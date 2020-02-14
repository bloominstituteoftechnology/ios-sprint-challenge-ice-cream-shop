
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
        var topFlavors: String = ""
        var ammountTopFlavors: Int = 0
        
        for flavor in flavors {
            if flavor.rating > 4.0 {
                ammountTopFlavors += 1
                
                print("Our top flavors are \(topFlavors)")
                
            }
        }
    }
    
}


func orderCone(flavor: Flavor, topping: String?, size: Size) -> Cone? {
    let newCone = Cone(flavor: <#T##Flavor#>, topping: <#T##String?#>, size: <#T##Size#>)
    let priceCone = size.rawValue
    
    if let unwrappedTopping = topping {
        print("Your \(flavor.name) ice cream with \(unwrappedTopping) is \(size.rawValue)")
    } else {
        print("Your \(flavor.name) ice cream is \(size.rawValue)")
    }
    
    totalSales += priceCone
    
    return newCone
}







let myFlavor = Flavor(name: "Vanilla", rating: 3.5)
let carlsFlavor = Flavor(name: "Chocolate", rating: 2.3)
let momsFlavor = Flavor(name: "Cherry", rating: 4.0)

let arrayOfSizes: [Size] = [.small, .medium, .large]
let arrayOfToppings: [String] = ["sprinkles", "cherry", "whipped cream"]

let iceCreamShop = IceCreamShop(flavors: [myFlavor], size: arrayOfSizes, toppings: arrayOfToppings, totalSales: 0)

iceCreamShop.listTopFlavors()

newCone?.eat()

print(iceCreamShop.totalSales)
