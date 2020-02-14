
enum Size: Double {
    case small = 1.99
    case medium = 2.99
    case large = 3.99
}

struct Flavor {
    var name = ["Vanilla", "Chocolate"]
    var rating: Double
}



struct Cone {
    let flavor: String
    let topping: String
    let size: Size
    
    func eat() {
        
        print("I love \(flavor) cone!")
        
    }
    
}


class IceCreamShop {
    
    var flavors = ["Vanilla", "Chocolate"]
    
    var totalScoops: Int
    
    var toppings: String
   
    var totalSales: Double = 0.0
    
    init(iceCreamFlavors: String, totalScoops: Int, toppings: String, totalSales: Double) {
        self.flavors = flavors
        self.totalScoops = totalScoops
        self.toppings = toppings
        self.totalSales = totalSales
    }
    func listTopFlavors() {
        
        for topFlavors in flavors {
            print("Our top flavors are \(flavors)")
        }
    }
    
}



func orderCone(order: Cone?) {
    
}


