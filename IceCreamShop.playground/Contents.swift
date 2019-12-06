//Stephanie Ballard

enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}


struct Flavor {
    let name: String
    let rating: Double
}

struct Cone {
    let flavor: String
    let topping: String
    let size: Size
}

let flavor: String, rating = ["Vanilla Marshmellow": 3.0, "Chocolate Cookie Crunch": 5.0 , "Srawberry Bliss": 4.0, "Peanutbutter Swirl": 5.0, "Chocolate Chip Mint": 4.0, "Cookie Dough": 4.0, "Oreo": 5.0, "Rocky Road": 3.0, "Christmas Peppermintbark": 4.0]

let topFlavors = ["Chocolate Cookie Crunch", "Peanutbutter Swirl", "Oreo"]

func eat() {
    print("Mmm! I love \(Flavor.self)")
}

class IceCreamShop {
    var flavor: String
    var size: String
    var topping: String
    var totalSales: Double
    
    init(flavor: String, size: String, topping:String) {
        self.flavor = flavor
        self.size = size
        self.topping = topping
        self.totalSales = totalSales
    }
}


func listTopFlavors() {
    let topRatedFlavors =
    {
        print("Our top rated flavors are ")
    }
}
