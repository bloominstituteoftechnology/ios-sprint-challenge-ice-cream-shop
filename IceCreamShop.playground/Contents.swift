//Stephanie Ballard

let iceCreamShopName = "Scoops!"

enum Size: Double {
    case small = 4.98
    case medium = 5.98
    case large = 6.98
}

struct Flavor {
    let name: String
    let rating: Double
}

struct Cone {
    let flavor: String
    let topping: String?
    let size: Size
    
    func eat() {
        print("Mmm! I love \(self.flavor)")
    }
}

//let flavors = ["Vanilla Marshmellow","Chocolate Cookie Crunch","Srawberry Bliss","Peanutbutter Swirl","Chocolate Chip Mint","Cookie Dough","Oreo", "Rocky Road", "Christmas Peppermintbark"]
//
//let flavorRatings: String, rating = ["Vanilla Marshmellow": 3.0, "Chocolate Cookie Crunch": 5.0 , "Srawberry Bliss": 4.0, "Peanutbutter Swirl": 5.0, "Chocolate Chip Mint": 4.0, "Cookie Dough": 4.0, "Oreo": 5.0, "Rocky Road": 3.0, "Christmas Peppermintbark": 4.0]
//

let flavor1 = Flavor(name: "Vanilla Marshmellow", rating: 3.0)
let flavor2 = Flavor(name: "Chocolate Cookie Crunch", rating: 5.0)
let flavor3 = Flavor(name: "Strawberry Bliss", rating: 4.0)
let flavor4 = Flavor(name: "Peanutbutter Swirl", rating: 5.0)
let flavor5 = Flavor(name: "Chocolate Chip Mint", rating: 4.0)
let flavor6 = Flavor(name: "Cookie Dough", rating: 4.0)
let flavor7 = Flavor(name: "Oreo", rating: 5.0)
let flavor8 = Flavor(name: "Rocky Road", rating: 3.0)
let flavor9 = Flavor(name: "Christmas Peppermint Bark", rating: 4.0)

let topFlavors = [flavor2, flavor4, flavor7]

class IceCreamShop {
    var flavors: [Flavor]
    var sizes: [Size]
    var toppings: [String]
    var totalSales: Double
    
    init(flavors: [Flavor], sizes: [Size], toppings: [String], totalSales: Double) {
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
        self.totalSales = totalSales
        
    }
    
    func listTopFlavors() {
        for flavor in flavors {
            if flavor.rating == 5.0 {
                print("Our top flavors are \(flavor.name)")
            }
        }
    }
    
    func orderCone (flavor: String, topping: String?, size: Size) -> Cone? {
        
        let cone1 = Cone(flavor: flavor, topping: topping, size: size)
        if let coneTopping = topping {
            print("The total for your \(cone1.flavor) with \(coneTopping) comes to \(cone1.size.rawValue).")
        } else {
            print("The total for your \(cone1.flavor) comes to \(cone1.size.rawValue).")
        }
        totalSales += cone1.size.rawValue
        return cone1
    }
    
}
Cone(flavor: "Rocky Road", topping: "cherry", size: Size.small)
Cone(flavor: "Oreo", topping: nil, size: Size.large)

print(topFlavors)

//let flavors2 = ["chocolate", "vanilla", "cherry", "mint"]
let newFlavor1 = Flavor(name: "Chocolate", rating: 4.0)
let newFlavor2 = Flavor(name: "Vanilla", rating: 3.0)
let newFlavor3 = Flavor(name: "Cherry", rating: 5.0)
let newFlavor4 = Flavor(name: "Mint", rating: 5.0)

var flavorsArray: [Flavor] = []
flavorsArray.append(newFlavor1)
flavorsArray.append(newFlavor2)
flavorsArray.append(newFlavor3)
flavorsArray.append(newFlavor4)

print(flavorsArray)

let sizes = [Size.small, Size.medium, Size.large]

let toppings = ["sprinkles", "whipped cream", "cherry", "chocolate sprinkles", "walnuts", "crushed oreos", "Reese's crumbles"]

let scoops = IceCreamShop(flavors: flavorsArray, sizes: sizes, toppings: toppings, totalSales: 6.98)

//let scoops = IceCreamShop(flavors: flavorsArray, sizes: [Size.medium], toppings: ["chocolate sprinkles"], totalSales: 5.98)

//let scoopsFirstSale = IceCreamShop(flavors: [flavor2], sizes: [Size.large], toppings: ["walnuts"], totalSales: 6.98)

let scoopsFirstSale = IceCreamShop(flavors: [flavor2], sizes: [Size.medium], toppings: ["crushed oreos"], totalSales: 6.98)

(scoops.totalSales)

//let scoops = IceCreamShop(flavors: [newFlavor4], sizes: [Size.large], toppings: ["walnuts"], totalSales: 5.99)

//let scoopsFirstSale = IceCreamShop(flavors: [newFlavor2], sizes: [Size.medium], toppings: ["chocolate sprinkles"], totalSales: 4.99)

scoops.listTopFlavors()





