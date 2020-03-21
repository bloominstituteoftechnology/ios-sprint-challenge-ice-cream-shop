//Sprint Challenge 1 by Bronson Mullens

struct Flavor {
    var name: String
    var rating: Int
}

enum Size: Double {
    case small = 1.99
    case medium = 2.99
    case large = 5.99
}

struct Cone {
    let flavor: Flavor
    let topping: String
    let size: Size.RawValue //TODO: Doublecheck raw value usage
    
    func eat() {
        print("Yum! I love the flavor \(self.flavor.name)")
    }
}

class IceCreamShop {
    var totalSales: Double
    
    //Ice Cream Flavors
    let chocolate = Flavor(name: "Mud Slide", rating: 4)
    let vanilla = Flavor(name: "Vanilla Cream", rating: 4)
    let bubblegum = Flavor(name: "Bubble Yum", rating: 2)
    let sherbert = Flavor(name: "Fruity Tooti", rating: 5)
    
    //Ice Cream Toppings
    let sprinkles: String = "Sprinkles"
    let caramelDrizzle: String = "Caramel Drizzle"
    let gummyWorms: String = "Gummy Worms"

    let sizes: Size
    
    init(totalSales: Double = 0.0, sizes: Size) {
        self.totalSales = totalSales
        self.sizes = sizes
    }
}
