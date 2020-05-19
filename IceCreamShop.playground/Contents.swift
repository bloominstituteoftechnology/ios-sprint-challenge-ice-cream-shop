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
    let flavor: Flavor
    let topping: String?
    let size: Size
    
    func eat() {
        print("You have ordered the \(flavor.name) flavor!")
    }
}

class IceCreamShop {
    var shopFlavors: [Flavor]
    var shopToppings: [String?]
    var totalSales: Double = 8.00
    var sizes: [Size]
    
    init(shopFlavors: [Flavor], shopToppings: [String], sizes: [Size], totalSales: Double) {
        self.shopFlavors = shopFlavors
        self.shopToppings = shopToppings
        self.sizes = sizes
        self.totalSales = totalSales
    }
    
    func listTopFlavors() {
        for flavor in shopFlavors {
            if flavor.rating >= 4 {
                print("\(flavor.name) with a \(flavor.rating) star rating!")
            }
        }
    }
    
    func orderCone(order: Cone) -> Cone? {
        totalSales = 0.00 + order.size.rawValue
        if order.topping != nil {
             print("You ordered the \(order.flavor.name) with \(order.topping ?? "no toppings"). Your total is $\(order.size.rawValue)")
        } else {
            print("Your \(order.flavor) is \(order.size.rawValue)")
        }
        return order
    }
}

let chocolateParadise = Flavor(name: "Chocolate Paradise", rating: 4.0)
let cookiesAndCream = Flavor(name: "Cookies and Cream", rating: 5.0)
let caramelJoy = Flavor(name: "Caramel Joy", rating: 4.5)
let grahamCanyon = Flavor(name: "Graham Canyon", rating: 5.0)
let cookieDough = Flavor(name: "Cookie Dough", rating: 3.5)
let strawberry = Flavor(name: "Strawberry", rating: 2.5)

var newSizes: [Size] = [.large, .medium, .small, .medium]

var newToppings = ["Cheesecake bites", "Cookie dough", "Graham Crackers", "Oreos", "Caramel", "Whipped Cream"]

let samsIceCreamShop = IceCreamShop(shopFlavors: [chocolateParadise, cookiesAndCream, caramelJoy, grahamCanyon, cookieDough, strawberry],
                                    shopToppings: newToppings,
                                    sizes: newSizes,
                                    totalSales: 0.00)

samsIceCreamShop.listTopFlavors()

let firstOrder = Cone(flavor: grahamCanyon, topping: "Graham Crackers", size: .small)

let secondOrder = Cone(flavor: chocolateParadise, topping: nil, size: .medium)

samsIceCreamShop.orderCone(order: firstOrder)

secondOrder.eat()

print(samsIceCreamShop.totalSales)
