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

var myFavoriteConeFlavor = Cone(flavor: "Vanilla", topping: "Caramel", size: .small)

myFavoriteConeFlavor.eat()

//: ## 4
class IceCreamShop {
    var flavors: [String] = ["Vanilla", "Cookie Dough", "Strawberry", "Rocky Road"]
    var topping: [String] = ["Hot Fudge", "Caramel", "oreos", "whippedCream"]
    var totalSales: Int
    var size: [Size]

    init(flavors: [String], topping: [String], totalSales: Int) {
        self.flavors = []
        self.topping = []
        self.totalSales = totalSales
        self.size = []
    }

}

//: ## 5.

func listTopFlavors() {
    var ourPopularFlavor = {
        print("Our top flavors are \(ourP)")
    }
 }



//: ## 6.

func orderCone() -> Int? {
    let myfavFlavor = Cone(flavor: "Vanilla", topping: "Caramel", size: .meidum)
}



//: ## 7.

let firstFavoriteFlavor = Flavor(name: "Vanilla Carmerila ", rating: 5)


//: ## 8.

//: ## 9.


//: ## 10.

let

//: ## 11.


//: ## 12.




