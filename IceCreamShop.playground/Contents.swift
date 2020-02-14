





struct Flavor {
    var name: String
    var rating: Double
}

enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}

struct Cone {
    let flavor: Flavor
    let topping: String?
    let size: Size
    
    func eat() {
        print("Hmm! I love \(flavor.name)!")
    }
}

class IceCreamShop {
    //STEP 4
    var sizes: [Size]
    var flavors: [Flavor]
    var toppings: [String]
    var totalSales: Double
    
    init(totalSales: Double, sizes: [Size], toppings: [String], flavors: [Flavor]) {
        self.totalSales = totalSales
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
    }
    
    func listTopFlavors() {
        var topFlavors: String = ""
        for flavor in flavors {
            if flavor.rating > 4.0 {
                topFlavors = flavor.name + ", " + topFlavors
            }
        }
        print("Our top flavors are \(topFlavors)")
    }
    
    func orderCone(flavor: Flavor, topping: String?, size: Size) -> Cone? {
        
        let newCone = Cone(flavor: flavor, topping: topping, size: size)
        let priceOfCone = size.rawValue
        
        if let unWrappedTopping = topping {
            print("Your \(flavor) ice cream with \(unWrappedTopping) is \(size.rawValue)")
        } else {
            print("Your \(flavor) ice cream is $\(size.rawValue)")
        }
        
        totalSales += priceOfCone
        
        return newCone
    }
}


let flavor1 = Flavor(name: "Mint", rating: 4.5)
let flavor2 = Flavor(name: "Vanilla", rating: 3.2)
let flavor3 = Flavor(name: "Chocolate", rating: 4.1)

let arrayOfSizes: [Size] = [.small, .medium, .large]
let arrayOfToppings: [String] = ["chocolate chips", "reese's peanut butter cups", "sour gummy worms"]


let iceCreamShop = IceCreamShop(totalSales: 0, sizes: arrayOfSizes, toppings: arrayOfToppings, flavors: [flavor1, flavor2, flavor3])

iceCreamShop.listTopFlavors()

let newCone = iceCreamShop.orderCone(flavor: flavor1, topping: "chocolate chips", size: .large)
newCone?.eat()
print(iceCreamShop.totalSales)
