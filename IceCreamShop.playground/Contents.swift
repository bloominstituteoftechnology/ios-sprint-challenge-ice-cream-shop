



struct Flavor {
    let name: String
    let rating: String
    
}




enum Size: Double {
    case small = 3.99
    case meduim = 4.99
    case large = 5.99
}

struct Cone {
    var topping: String?
    var flavor: Flavor
    var size: Size
    

func eat() {
    print("Mmm! I love \(flavor.name)")
    }
}

class IceCreamShop {
    var flavors: [Flavor]
    var sizes: [Size]
    var toppings: String
    var totalSales: Double
    
    init(flavors: [Flavor], sizes: [Size], toppings: String, totalSales: Double) {
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
        self.totalSales = totalSales
    }
    
    func listTopFlavors() {
        for flavor in flavors {
            print("Our flavors are \(flavor.name)")
        }
    }
        
    func orderCone(topping: String?, flavor: Flavor, size: Size) -> Cone? {
            let newCone = Cone(topping: topping, flavor: flavor, size: size)
        self.totalSales += newCone.size.rawValue
        
        if let toppings = newCone.topping {
            print(" Your \(newCone.flavor) ice cream \(toppings)is \(newCone.size.rawValue)")
    
        }
    return newCone
        }
        }
        
    
    
    
    
    let mintChocolate = Flavor(name: "Mint Chocolate" , rating: "Four Stars")
    let vanilla = Flavor(name: "Vanilla", rating: "Three Stars")
    let strawberry = Flavor(name: "Strawberry", rating: "Four Stars")

let newIceCreamShop = IceCreamShop(flavors: [mintChocolate, vanilla, strawberry], sizes: [.large, .meduim, .small], toppings: "All", totalSales: 0.00)
    
newIceCreamShop.listTopFlavors()
        

            
        
    
let newCone = newIceCreamShop.orderCone(topping: "All", flavor: vanilla, size: .large)

newCone?.eat()
            
newIceCreamShop

            
            
            
