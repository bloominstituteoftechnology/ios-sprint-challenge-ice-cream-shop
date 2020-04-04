
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
    let topping: String?
    let size: Size
}

let firstOrder = vanilla


func eat() {
    print("You've chosen the \(firstOrder.name) flavor which has a rating of \(firstOrder.rating)!")
}

eat()

let flavorOptions = [chocolate, vanilla, cookiesAndCream, peanutButter, cookieDough]
let toppingOptions = ["Oreos", "Tofee Bits", "Brownie Bites", "Caramel", "Chocolate Chips"]

class IceCreamShop {
    var shopFlavors = flavorOptions
    var shopToppings = toppingOptions
    var sizes: Size
    var totalSales: [Double]

    init(shopFlavors: Flavor, shopToppings: String, sizes: Size) {
        self.shopFlavors = flavorOptions
        self.shopToppings = toppingOptions
        self.sizes = sizes
        self.totalSales = []
    }
    
    func listTopFlavors() {
        var flavorList: [String] = []
        for flavor in flavorOptions {
            if flavor.rating >= 4 {
                flavorList.append(flavor.name)
            }
        }
        print("Our top flavors are \(flavorList)")
    }
    
    func orderCone(flavor: Flavor, topping: String, size: Size) -> Cone? {
        let newCone = Cone(flavor: cookiesAndCream, topping: "Oreos", size: .small)
        print(newCone.size.rawValue)
        
        totalSales.append(newCone.size.rawValue)
        
        print("Your \(newCone.flavor) ice cream with \(newCone.topping), will be \(newCone.size.rawValue)")
    
        return newCone
    }
}

let newOrder = IceCreamShop(shopFlavors: cookiesAndCream, shopToppings: "Oreos", sizes: .large)

newOrder.orderCone(flavor: cookieDough, topping: "Chocolate Chips", size: .medium)
