
struct Flavor {
    let name: String
    var rating: Double
}

enum Size: Double{
    case small = 8.0
    case medium = 16.0
    case large = 32.0
}

struct Cone {
    let flavor: String
    let topping: String
    let size: Size
}

class IceCreamShop {
    
    let flavors: [String] = ["Vanilla", 3.0,"Chocolate","Strawberry"]
    var sizes: [Size] = [.small, .medium, .large]
    var toppings: [String] = ["Sprinkles", "Gummy Bears", "Nuts"]
    
    let totalSales: Double
    
    init(totalSales: Double, sizes: [Size], toppings: [String]) {
        self.totalSales = totalSales
        self.sizes = sizes
        self.toppings = toppings
    }
}

let cone = Cone(flavor: "Vanilla", topping: "Sprinkles", size: Size.medium)

func eat() {
    print("Mmm!  I love \(cone.flavor) flavor!")
}

func listTopFlavors() {
    
}


eat()
