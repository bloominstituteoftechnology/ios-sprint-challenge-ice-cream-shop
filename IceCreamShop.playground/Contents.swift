

struct Flavor {
    let name: String
    let rating: Int
}

let chocolateParadise = Flavor(name: "Chocolate Paradise", rating: 4)
let cookiesAndCream = Flavor(name: "Cookies and Cream", rating: 5)
let caramelJoy = Flavor(name: "Caramel Joy", rating: 4)

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
        print("You have ordered the \(flavor.name) flavor!")
    }
}

var flavorOptions = [cookiesAndCream, chocolateParadise, caramelJoy]
var toppingOptions = ["Oreos", "Caramel", "Whipped Cream"]

class IceCreamShop {
    var shopFlavors = flavorOptions
    var shopToppings = toppingOptions
    var totalSales: [Size.RawValue] = []
    var sizes: Size
    
    init(shopFlavors: Flavor, shopToppings: String, sizes: Size) {
        self.shopFlavors = flavorOptions
        self.shopToppings = toppingOptions
        self.sizes = sizes
        self.totalSales = []
    }
    
    func listTopFlavors() {
        var flavorList: [String] = []
        for flavor in shopFlavors {
            if flavor.rating >= 4 {
                flavorList.append(flavor.name)
            }
        }
        print("Our top flavors are \(flavorList)")
    }
    
    func orderCone(flavor: Flavor, topping: String?, Size: Size) -> Cone? {
       
        let newCone = Cone(flavor: chocolateParadise, topping: "Whipped Cream", size: .small)
        totalSales.append(sizes.rawValue)
        
        print("You ordered the \(newCone.flavor.name) cone with \(newCone.topping ?? "no toppings"). Your total is $\(newCone.size.rawValue)")
        
        return newCone
    }
}

let grahamCanyon = Flavor(name: "Graham Canyon", rating: 5)
let cookieDough = Flavor(name: "Cookie Dough", rating: 4)
let strawberry = Flavor(name: "Strawberry", rating: 2)

flavorOptions.append(grahamCanyon)
flavorOptions.append(cookieDough)
flavorOptions.append(strawberry)

let newSizes: [Size] = [.large, .medium, .small, .large, .large]

let newToppings: [String] = ["Cheesecake bites", "Cookie dough", "Graham Crackers"]

toppingOptions.append(contentsOf: newToppings)

let newIceCreamShop = IceCreamShop(shopFlavors: grahamCanyon, shopToppings: "Graham Crackers", sizes: .large)

newIceCreamShop.listTopFlavors()

let secondCone = Cone(flavor: strawberry, topping: "Strawberries", size: .small)
secondCone.eat()

newIceCreamShop.totalSales
