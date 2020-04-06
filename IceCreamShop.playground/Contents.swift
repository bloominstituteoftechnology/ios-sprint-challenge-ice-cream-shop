
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
    
    func eat() {
        print("Yummm! You've chosen the \(flavor.name) flavor!")
    }
}

var flavorOptions = [chocolate, vanilla, cookiesAndCream, peanutButter, cookieDough]
var toppingOptions = ["Oreos", "Tofee Bits", "Brownie Bites", "Caramel", "Chocolate Chips"]

class IceCreamShop {
    var shopFlavors = flavorOptions
    var shopToppings = toppingOptions
    var sizes: Size
    var totalSales: [Double]

    init(shopFlavor: Flavor, shopTopping: String, sizes: Size) {
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
    
    func orderCone(flavor: Flavor, topping: String?, size: Size) -> Cone? {
        let newCone = Cone(flavor: peanutButter, topping: "Oreos" , size: .large)
        
        totalSales.append(sizes.rawValue)
        
        if let toppingListed = topping {
            print("Your \(flavor.name) ice cream with \(toppingListed), will be \(size.rawValue)")
        } else if newCone.topping == nil {
            print("Your \(flavor.name) is \(size.rawValue)")
        }
    
        return newCone
    }
}

let newOrder = IceCreamShop(shopFlavor: vanilla, shopTopping: "Brownie Bits", sizes: .large)

newOrder.listTopFlavors()

newOrder.orderCone(flavor: chocolate, topping: "Chocolate Chips", size: .small)

newOrder.orderCone(flavor: cookieDough, topping: "Cookie Dough Bites", size: .large)

let mudPie = Flavor(name: "Mudpie", rating: 3)
let cottonCandy = Flavor(name: "Cotton Candy", rating: 2.5)
let caramelExplosion = Flavor(name: "Caramel Explosion", rating: 4.7)
let cheeseCake = Flavor(name: "Cheese Cake", rating: 5)
let chocolateChip = Flavor(name: "Chocolate Chip", rating: 3.8)

let sizes: [Size] = [.small, .medium, .large, .small]

let toppingsArray = ["Cheesecake Bites", "Snickers", "Twix", "Butterfinger", "Gummies"]

flavorOptions.append(contentsOf: [mudPie, cottonCandy, caramelExplosion, cheeseCake,chocolateChip])

let newIceCreamShop = IceCreamShop(shopFlavor: mudPie, shopTopping: "Twix", sizes: .medium)

newIceCreamShop.listTopFlavors()

let kennasFlavor = newIceCreamShop.orderCone(flavor: cheeseCake, topping: "Cheesecake Bites", size: .small)

kennasFlavor?.eat()

print(newIceCreamShop.totalSales)
