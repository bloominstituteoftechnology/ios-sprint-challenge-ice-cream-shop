
struct Flavor {
    let name: String
    var rating: Double
}

enum Size: Double {
    case small = 3.99
    case med = 4.99
    case large = 5.99
}

struct Cone {
    let flavor: Flavor
    let topping: String
    let size: Size
    
    func eat() {
        print("Mmm! I love \(flavor.name)!")
    }
}


class IceCreamShop {
    var flavors: [Flavor]
    var sizes : [Size]
    var topings: [Cone]
    var totalSales: [String]
    
    init() {
        self.flavors = []
        self.sizes = []
        self.topings = []
        self.totalSales = []
    }
    
    func listTopFlavors() {
        for topFlavors in flavors {
            if topFlavors.rating > 4.0 {
                print("Our top flavors are \(flavors)")
            }
            
            func orderCone(flavor: String, topping: String?, size: String) {
                if topping != nil{
                }
                let newCone = Cone(flavor: , topping: nil, size: Size.large)
                        print("Your Chocolate Chip ice cream is 5.99.")
            }
        }
    }
}


//let chocolateChip = Flavor(name: "Chocolate Chip", rating: 4.5)
//let cookieDough = Flavor(name: "Cookie Dough", rating: 5.0)
//let chocolateMint = Flavor(name: "Chocolate Mint", rating: 4.8)
//let CoffeVanillaBean = Flavor(name: "CoffeVanillaBean", rating: 3.2)




