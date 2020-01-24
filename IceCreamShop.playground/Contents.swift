
struct Flavor {
    var name: String
    var rating: Double
}

var chocolate = Flavor(name: "Coocoo Chocolate", rating: 4.2)
var vanilla = Flavor(name: "Milla Vanilla", rating: 3.8)
var strawberry = Flavor(name: "Strawberry Shorts", rating: 4.6)
var cottonCandy = Flavor(name: "Circus Candy", rating: 3.6)
var pastachio = Flavor(name: "Pastachio Disguisey", rating: 5.0)

enum Size: Double {
    case small = 3.99
    case medium = 5.50
    case large = 6.99
}

struct Cone {
    let flavor: Flavor // Do these constants need to be specific?
    let topping: String?
    let size: Size
    
    func eat() {
        print("Mmm! I love \(flavor)!")
    }
}

class IceCreamShop { // Should these be arrays with all the options??
    var flavors: [Flavor]
    var sizes: [Size]
    var toppings: [String]
    var totalSales: Double
    
    init(flavors: [Flavor], sizes: [Size], toppings: [String], totalSales: Double ) {
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
        self.totalSales = totalSales // why is there an error here?
    }
    
    func listTopFlavors() {
        for flavor in flavors {
            if flavor.rating >= 4.0 {
                print("Our top flavors are \(flavor.name)") //Not sure how multiple flavors will be listed here
            }
        }
    }
    
    func orderCone(flavor: Flavor, topping: String?, size: Size) -> Cone? {
         
        let newCone = Cone(flavor: flavor, topping: topping, size: size)
        
        self.totalSales += newCone.size.rawValue

    
        if let unwrappedTopping = newCone.topping {
            print("Your \(newCone.flavor.name) ice cream with \(unwrappedTopping) is \(newCone.size)")
        } else {
            print("Your \(newCone.flavor.name) ice cream is \(newCone.size)")
        }
        
        return newCone
    }
}

let flavorArray = [chocolate, strawberry, cottonCandy, pastachio]
let sizeArray = [Size.small, .medium, .large]

let newIceCreamShop = IceCreamShop(flavors: flavorArray, sizes: sizeArray, toppings: ["sprinkles", "fudge"], totalSales: 0.0)

newIceCreamShop.listTopFlavors()

let newCone = newIceCreamShop.orderCone(flavor: chocolate, topping: nil, size: .small)

newCone?.eat()


print(newIceCreamShop.totalSales)
