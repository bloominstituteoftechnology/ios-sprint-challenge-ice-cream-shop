struct Flavor {
    let name: String
    let rating: Int
}

enum size {
    case small
    case medium
    case large
}

let small: Double = 0.99
let medium: Double = 1.99
let large: Double = 2.99

struct cone {
    let vanilla: String = "Vanilla"
    let chocolate: String = "Chocolate"
    let strawberry: String = "Strawberry"
    let cookieDough: String = "Cookie Dough"
    let mintChocolateChip: String = "Mint Chocolate Chip"
}

func eat () {
    print("Mmm I Love /(vanilla)" )
}

class IceCreamShop {
    var flavor: String
    var size: String
    var cone: String
    var totalSales: Double

}

init(flavor: String, Size: Double, cone: String) {
    self.flavor = flavor
    self.size = size
    self.cone = cone
    self.totalSales = []
}

func listTopFlavors() {
    
}

func orderCone() {
    
}
