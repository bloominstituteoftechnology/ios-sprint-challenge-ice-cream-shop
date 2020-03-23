
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
    var totalSales: String
    
    init(totalSales: String) {
        self.flavors = []
        self.sizes = []
        self.topings = []
        self.totalSales = totalSales
    }
    
    func listTopFlavors() {
        for topFlavors in flavors {
            if topFlavors.rating > 4.0 {
                print("Our top flavors are \(flavors)")
            }
            
            func orderCone(flavor: String, topping: String?, size: String) {
                if topping != nil{
                }
                for sizeList in sizes {
                    for flavorList in flavors {
                    let newCone = Cone(flavor: flavorList, topping: (topping ?? "no topping"), size: sizeList)
                
            }
        }
    }
}


//let chocolateChip = Flavor(name: "Chocolate Chip", rating: 4.5)
//let cookieDough = Flavor(name: "Cookie Dough", rating: 5.0)
//let chocolateMint = Flavor(name: "Chocolate Mint", rating: 4.8)
//let CoffeVanillaBean = Flavor(name: "CoffeVanillaBean", rating: 3.2)




