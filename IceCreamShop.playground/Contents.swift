//Michael McGrath

struct Flavor {
    let name: String
    let rating: Double
}

enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}

struct Cone {
    let flavor: String
    let topping: String?
    let size: Size
    
    func eat() {
        print("Mmm! I love \(self.flavor)!")
    }
}

class IceCreamShop {
    var flavors: [Flavor]
    var toppings: [String]
    var sizes: [Size]
    var totalSales: Double
    
    init(flavors: [Flavor], toppings: [String], sizes: [Size], totalSales: Double) {
        self.flavors = flavors
        self.toppings = toppings
        self.sizes = sizes
        self.totalSales = totalSales
    }
    
    func listTopFlavors() {
        for flavor in flavors {
            if flavor.rating >= 4.0 {
                print("Our top flavors are \(flavor.name).")
            }
        }
    }
    
    func orderCone(flavor: String, topping: String?, size: Size) -> Cone? {
        let newCone = Cone(flavor: flavor, topping: topping, size: size)
        if let coneTopping = topping {
            print("Your \(newCone.flavor) with \(coneTopping) is \(newCone.size.rawValue).")
        } else {
            print("Your \(newCone.flavor) is \(newCone.size.rawValue).")
        }
        totalSales += newCone.size.rawValue
        return newCone
    }
}
//let flavor1 = Flavor(name: "Chocolate", rating: 3.2)
//let flavor2 = Flavor(name: "Vanilla", rating: 3.0)
//let flavor3 = Flavor(name: "Cookies N Cream", rating: 3.7)
//let flavor4 = Flavor(name: "Chocolate Chip", rating: 3.5)
//let flavor5 = Flavor(name: "Nutty Coconut", rating: 3.8)
//let flavor6 = Flavor(name: "Vegan Chocolate Extreme", rating: 3.5)
//let flavor7 = Flavor(name: "Strawberry Cheesecake", rating: 3.3)
//let flavor8 = Flavor(name: "Egg Nog (Holiday Flavor)", rating: 3.9)

let flavor1 = Flavor(name: "Chocolate", rating: 4.2)
let flavor2 = Flavor(name: "Vanilla", rating: 4.0)
let flavor3 = Flavor(name: "Cookies N Cream", rating: 4.7)
let flavor4 = Flavor(name: "Chocolate Chip", rating: 4.5)
let flavor5 = Flavor(name: "Nutty Coconut", rating: 3.8)
let flavor6 = Flavor(name: "Vegan Chocolate Extreme", rating: 3.5)
let flavor7 = Flavor(name: "Strawberry Cheesecake", rating: 4.3)
let flavor8 = Flavor(name: "Egg Nog (Holiday Flavor)", rating: 3.9)

let sizes = [Size.small, Size.medium, Size.large]

let toppings = ["Hot Fudge", "Caramel", "Whipped Cream", "M&M's", "Walnuts"]

let myIceCreamShop = IceCreamShop(flavors: [flavor1, flavor2, flavor3, flavor4, flavor5, flavor6, flavor7, flavor8], toppings: toppings, sizes: sizes, totalSales: 0)

myIceCreamShop.listTopFlavors()

let myCone: Cone? = myIceCreamShop.orderCone(flavor: "Cookies N Cream", topping: "Whipped Cream", size: Size.medium)

myCone?.eat()

let firstSale = myIceCreamShop.orderCone(flavor: "Chocolate Chip", topping: nil, size: Size.large)

print(myIceCreamShop.totalSales)

