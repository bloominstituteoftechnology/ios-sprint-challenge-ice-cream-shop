
enum Ratings: Double {
    case oneStar = 1
    case twoStar = 2
    case threeStar = 3
    case fourStar = 4
    case fiveStar = 5
}

struct Flavor {
    let name: String
    let rating: Ratings
}

let chocolateParadise = Flavor(name: "Chocolate Paradise", rating: .threeStar)
let cookiesAndCream = Flavor(name: "Cookies and Cream", rating: .fiveStar)
let caramelJoy = Flavor(name: "Caramel Joy", rating: .fiveStar)

enum Size: Double {
    case small = 3.00
    case medium = 4.00
    case large = 5.00
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
            if flavor.rating.rawValue >= 4 {
                flavorList.append(flavor.name)
            }
        }
        print("Our top flavors are \(flavorList)")
    }
    
    func orderCone(flavor: Flavor, topping: String, Size: Size) -> Cone? {
       
        let newCone = Cone(flavor: chocolateParadise, topping: "Whipped Cream", size: .small)
        totalSales.append(newCone.size.rawValue)
        
        print("You ordered the \(newCone.flavor.name) cone with \(newCone.topping ?? "no toppings"). Your total is \(newCone.size.rawValue)")
        
        return newCone
    }
}

let grahamCanyon = Flavor(name: "Graham Canyon", rating: .fiveStar)
let cookieDough = Flavor(name: "Cookie Dough", rating: .fourStar)
let strawberry = Flavor(name: "Strawberry", rating: .threeStar)

flavorOptions.append(grahamCanyon)
flavorOptions.append(cookieDough)
flavorOptions.append(strawberry)

let newSizes: [Size] = [.large, .medium, .small, .large, .large]

let newToppings: [String] = ["Cheesecake bites", "Cookie dough", "Graham Crackers"]

toppingOptions.append(contentsOf: newToppings)

let newIceCreamShop = IceCreamShop(shopFlavors: grahamCanyon, shopToppings: "Graham Crackers", sizes: .large)

newIceCreamShop.listTopFlavors()

let secondOrder = newIceCreamShop.orderCone(flavor: strawberry, topping: "Strawberries", Size: .small)

secondOrder?.eat()

print(newIceCreamShop.totalSales)
