
struct Flavor {
    var name: String
    var rating: Double
    
}

enum Size : Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
    
}

struct Cone {
    let flavor: Flavor
    let topping: String
    let size: Size
    
    func eat () {
        print("Mmm! I love \(flavor)")
    }
}
var totalSales = 0

class IceCreamShop {
    
    var flavors: [Flavor]
    var sizes: Size
    var toppings: String
    
    
    init(flavors: [Flavor], sizes: Size, toppings: String){
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
        
    }
    
    func listTopFlavors() {
        
        for flavor in flavors {
            if flavor > 4.0 {
                print("Our top flavors are \(flavor.name)")
            }
        }
        
        
    }
    }


func orderCone(flavor: Flavor, topping: toppings, size: Size) -> Cone? {
    totalSales += 1
    let newCone = Cone(flavor: flavorArray topping: toppingArray, size: sizeArray)
    
}
   
let flavorOne = Flavor(name: "Cookie Dough", rating: 3.5)
let flavorTwo = Flavor(name: "Mint Chocolate Chip", rating: 4.9)
let flavorThree = Flavor(name: "Cookies and cream", rating: 4.5)

let sizeArray = [Size.large, Size.medium, Size.small]

let toppingsArray = ["Fudge", "Chocolate Syrup", "Bananas", "Caramel"]


let menu = IceCreamShop(flavors: flavorOne, sizes: sizeArray[0], toppings: toppingsArray[0])

IceCreamShop.listTopFlavors()

let coneOne = orderCone(flavor: flavorOne, topping: toppingsArray[0], size: .large)

Cone.eat(coneOne)

