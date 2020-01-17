



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
    var topping: String
    var flavor: String
    var size: Size
    

func eat() {
    print("Mmm! I love \(flavor.name)")
    }
}

class IceCreamShop {
    var flavors: String
    var sizes: Size
    var toppings: String
    var totalSales: Double
    
    init(flavors: String, sizes: Size, toppings: String, totalSales: Double) {
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
        self.totalSales = totalSales
    
    
    func listTopFlavors() {
        let flavorArray = ["flavor1", "flavor2", "flavor3"]
        for items in flavorArray {
        print("Our flavors are \(flavorArray)")
   
        
        
    func orderCone() {
            
        }
    
    
    
    
    
    let mintChocolate = Flavor(name: "Mint Chocolate" , rating: "Four Stars")
    let vanilla = Flavor(name: "Vanilla", rating: "Three Stars")
    let strawberry = Flavor(name: "Strawberry", rating: "Four Stars")

    let newIceCreamShop = IceCreamShop(flavors: "All", sizes: .large, toppings: "All", totalSales: 200.00)
    
    
            
            
            
            
            
            
            
            
            
    
listTopFlavors()
    
    
    let newCone = Cone(topping: "Sprinkles", flavor: "Vanilla", size: .large)
            

orderCone()

eat()
    
    
    
    
             }
            }
            
            }
            
            
            
print(totalSales)
