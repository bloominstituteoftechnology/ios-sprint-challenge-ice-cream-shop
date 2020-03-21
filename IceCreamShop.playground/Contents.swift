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
    var vanillaFlavor: String
    var cookieDoughFlavor: String
    var strawberryFlavor: String
    var rockyRoadFlavor: String
    var hotFudge: String
    var caramel: String
    var oreos: String
    var whippedCream: String
    var totalSales: Int
    var size: [Size]
    
    init(vanillaFlavor: String, cookieDoughFlavor: String, strawberyFlavor: String, rockyRoadFlavor: String, hotFudge: String, caramel: String, oreos: String, whippedCream: String, totalSales: Int) {
        self.vanillaFlavor = vanillaFlavor
        self.cookieDoughFlavor = cookieDoughFlavor
        self.strawberryFlavor = strawberyFlavor
        self.rockyRoadFlavor = rockyRoadFlavor
        self.hotFudge = hotFudge
        self.caramel = caramel
        self.oreos = oreos
        self.whippedCream = whippedCream
        self.totalSales = totalSales
        self.size = []
    }
    
}

//: ## 5

func listTopFlavors() {
    
}
