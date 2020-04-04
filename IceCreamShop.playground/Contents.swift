
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
        let newCone = Cone(flavor: cookiesAndCream, topping: "Oreos" , size: .large)
        
        totalSales.append(newCone.size.rawValue)
        
        if let toppingListed = newCone.topping {
            print("Your \(newCone.flavor.name) ice cream with \(toppingListed), will be \(newCone.size.rawValue)")
        } else if newCone.topping == nil {
            print("Your \(newCone.flavor.name) is \(newCone.size.rawValue)")
        }
    
        return newCone 
    }
}

let newOrder = IceCreamShop(shopFlavors: cookiesAndCream, shopToppings: "Oreos", sizes: .large)

newOrder.listTopFlavors()

newOrder.orderCone(flavor: cookieDough, topping: "Chocolate Chips", size: .medium)


let mudPie = Flavor(name: "Mudpie", rating: 3)
let cottonCandy = Flavor(name: "Cotton Candy", rating: 2.5)
let caramelExplosion = Flavor(name: "Caramel Explosion", rating: 4.7)
let cheeseCake = Flavor(name: "Cheese Cake", rating: 5)
let chocolateChip = Flavor(name: "Chocolate Chip", rating: 3.8)

let sizes: [Size] = []

let toppingsArray = ["Cheesecake Bites", "Snickers", "Twix", "Butterfinger", "Gummies"]

flavorOptions.append(contentsOf: [mudPie, cottonCandy, caramelExplosion, cheeseCake,chocolateChip])

let newIceCreamShop = IceCreamShop(shopFlavors: mudPie, shopToppings: "Twix", sizes: .medium)

newIceCreamShop.listTopFlavors()


let newCone = newIceCreamShop.orderCone(flavor: cheeseCake, topping: "Cheesecake Toppings", size: .small)

newCone?.eat()

