
// The app will need to be able to create an ice cream shop, give it a menu of flavors, toppings and ice cream cone sizes and let people order from the menu.


struct Flavor {
    var name: String
    var rating: Double
}

let chocolate = Flavor(name: "Chocolate", rating: 4.2)
let vanilla = Flavor(name: "Vanilla", rating: 3)
let cookieDough = Flavor(name: "Cookie Dough", rating: 4.5)
let cookiesAndCream = Flavor(name: "Cookies and Cream", rating: 5)
let peanutButter = Flavor(name: "Peanut Butter", rating: 3.9)

enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}

struct Cone {
    let flavor: Flavor
    let topping: String
    let size: Size
}

let orderOne = chocolate


func eat() {
    print("You've chosen the \(orderOne.name) flavor, great choice!")
}

eat()

struct Sales {
    var sales: Int
}

class IceCreamShop {
    var shopFlavors = [chocolate, vanilla, cookieDough, cookiesAndCream, peanutButter]
    var shopToppings = ["Chocolate Chips", "Oreos", "Cookie Dough Bites", "Tofee Bits", "Caramel", "Cheesecake Bites"]
    var sizes: Size
    var totalSales: [Int]

    init(sizes: Size) {
        self.totalSales = []
        self.shopFlavors = [chocolate, vanilla, cookieDough, cookiesAndCream, peanutButter]
        self.shopToppings = ["Chocolate Chips", "Oreos", "Cookie Dough Bites", "Tofee Bits", "Caramel", "Cheesecake Bites"]
        self.sizes = sizes
    }
}

func listTopFlavors() -> String {
    let flavorlist = IceCreamShop(sizes: .large)
    var topFlavors: [String] = []
    for flavor in flavorlist.shopFlavors {
        if flavor.rating >= 4 {
            topFlavors.append(flavor.name)
        }
    }
    return "Our top flavors are \(topFlavors)"
}

print(listTopFlavors())
