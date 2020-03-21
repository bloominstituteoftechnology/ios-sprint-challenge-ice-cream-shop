
// The app will need to be able to create an ice cream shop, give it a menu of flavors, toppings and ice cream cone sizes and let people order from the menu.


struct Flavor {
    var name: [String]
    var rating: Double
}

enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}

struct Cone {
    let flavor: String
    let topping: String
    let size: Size
}

var myFavoriteCone = Cone(flavor: "Cookies and Cream", topping: "Crushed Oreos", size: .medium)

func eat() {
    print("You've chosen the \(myFavoriteCone.flavor) flavor, great choice!")
}

eat()


//var iceCreamFlavors = ["Cookies and Cream", "Chocolate", "Vanilla"]
//var iceCreamToppings = ["Cookies", "Caramel", "Chocolate Chips"]

var iceCreamFlavor1 = Cone(flavor: "Cookies and Cream", topping: "Caramel", size: .large)


struct Sales {
    var sales: Int
}

class IceCreamShop {
    var shopFlavors: Flavor
    var shopToppings: Cone
    var shopSizes: Size
    var totalSales: [Sales]
    
    init(shopFlavor: Flavor, shopToppings: Cone, shopSizes: Size) {
        self.totalSales = []
        self.shopFlavors = shopFlavor
        self.shopToppings = shopToppings
        self.shopSizes = shopSizes
    }
}
















//class IceCreamShop {
//    var flavors = ["Chocolate", "Vanilla", "Strawberry", "Peanut Butter", "Cookies and Cream", "Cookie Dough"]
//    var toppings = ["Chocolate Chips", "Oreos", "Cookie Dough Bites", "Tofee Bits", "Caramel", "Cheesecake Bites"]
//    var sizes: Size
//    var totalSales: [Int]
//
//    init(size: Size) {
//        self.flavors = []
//        self.toppings = []
//        self.sizes = size
//        self.totalSales = []
//    }
//}
//
//func listTopFlavors() {
//
//}
