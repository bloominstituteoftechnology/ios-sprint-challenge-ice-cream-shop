//: ## 1.
struct Flavor {
    let name: String
    let rating: Int
}

//: ## 2.
enum Size: Double {
    case small = 3.99
    case meidum = 5.99
    case large = 7.99
}

//: ## 3.
struct Cone {
    let flavor: String
    let topping: String
    let size: Size
    
    func eat() {
        print("Mmm! I love \(self.flavor) as my cone flavor!")
    }
}

var myFavoriteConeFlavor = Cone(flavor: "Vanilla", topping: "Sprinkles", size: .large)

myFavoriteConeFlavor.eat()

//: ## 4
class IceCreamShop {
    var flavors: [String] = ["Vanilla", "Cookie Dough", "Strawberry", "Rocky Road"]
    var topping: [String] = ["Hot Fudge", "caramel", "oreos", "whippedCream"]
    var totalSales: Int
    var size: [Size]
    
    init(flavor: [String], topping: [String], totalSales: Int) {
        self.flavors = []
        self.topping = []
        self.totalSales = totalSales
        self.size = []
    }
    
}

//: ## 5

func listTopFlavors() {
    
}
