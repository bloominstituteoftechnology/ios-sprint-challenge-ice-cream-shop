// Ice-Cream Shop.

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
    var toppings: [String]
    var size: Size
    
    func eat() {
        
        let favFlavor: Flavor = .init(name: "Chocolate", rating: 4.5)
        
        print("Mm! I love \(favFlavor)")
    }
}

class IceCreamShop {
    
    var flavors: [Flavor]
    var sizes: [Size]
    var toppings: [String]
    var totalSales: Double
  
    init(flavors: [Flavor], sizes: [Size], toppings: [String]) {
        
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
        self.totalSales = 0.0
    }
}

var totalSales: Double = 0.0

// Creating some Flavors
let flavor1: Flavor =  .init(name: "Chocolate", rating: 4.5)
let flavor2: Flavor = .init(name: "Strawberry", rating: 2.5)
let flavor3: Flavor = .init(name: "Vanilla", rating: 1.0)
let flavor4: Flavor = .init(name: "SuperMan", rating: 5.0)

// Creating some sizes
let size1 = Size.large
let size2 = Size.medium
let size3 = Size.large

// Creating some toppings

let topping1 = "Chocolate Sprinkles"
let topping2 = "Chocolate Syrup"
let topping3 = "Oreos"
let topping4 = "Chocolate Chips"

// Array of all toppings
var allToppings = [topping1, topping2, topping3, topping4]

// Array of all Sizes
var allSizes = [size1, size2, size3]

// Array of all Flavors
var allFlavors: [Flavor] = [flavor1, flavor2, flavor3, flavor4]

// Creating an instance of IceCreamShop
let myShop = IceCreamShop(flavors: [flavor1, flavor2, flavor4], sizes: allSizes, toppings: allToppings)

// Top flavors function
func listTopFlavors(for: IceCreamShop) {
    
    var topFlavors: [String] = []
    
    
    for flavors in myShop.flavors {
        if flavors.rating > 4.0 {
            topFlavors.append("\(flavors.name.description)")
        }
    }
    print("Our top flavors are: \(topFlavors)")
}

// Calling above function
listTopFlavors(for: myShop)
 

// Order My Favorite Cone!

func orderCone(cone: Cone) -> Cone? {
    
    // This will increase the total sales of "myShop" everytime a Cone instance is ordered through this function
    
    myShop.totalSales = totalSales + cone.size.rawValue

    return cone
}

let myCone = Cone(flavor: flavor1, toppings: [topping1, topping3], size: .large)

// Ordering my new cones

orderCone(cone: myCone)

// Checking to see if totalSales increase after the purchases

myShop.totalSales


// Creating new Flavors and Toppings
let newFlavor1: Flavor = .init(name: "Mint", rating: 5.5)
let newFlavor2: Flavor = .init(name: "Banana", rating: 0.2)

let newFlavorsArray: [Flavor] = [newFlavor1, newFlavor2]

let newTopping1 = "Gummy Worms"
let newTopping2 = "Reese Cups"

let newToppingsArray = [newTopping1, newTopping2]

// Creating new IceCreamShop instance
let newIceCreamShop = IceCreamShop(flavors: newFlavorsArray, sizes: allSizes, toppings: newToppingsArray)


func listTopFlavors2() {
    
    var topFlavors: [String] = []
    
    
    for flavors in newFlavorsArray {
        if flavors.rating > 4.0 {
            topFlavors.append("\(flavors.name)")
        }
    }
    print("Our top flavors are: \(topFlavors)")
}
// Calling above function
listTopFlavors2()















