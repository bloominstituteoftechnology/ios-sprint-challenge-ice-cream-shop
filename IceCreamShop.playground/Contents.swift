


// Project

struct Flavor {
   var flavorA: String
    var flavorB: String
    var flavorC: String
    var rating: Double
}

enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.78
}

 
struct Cone {
    let flavor: [Flavor]
    let topping: String = "Caramel"
    let size: Size
    
    func eat() {
        print("Mmm! I love \(flavor)")
    }
}


class IceCreamShop {
    var menu: Cone
    var totalSales: Double
    
    init(menu: Cone, totalSales: Double) {
        self.menu = menu
        self.totalSales = totalSales
    }
}

let addCone = Cone(flavor: [Flavor.init(flavorA: "Vanilla", flavorB: "Chocolate", flavorC: "Coockie Doug", rating: 4.0)], size: .medium)
print(addCone)

func listTopFlavor() {
    let newFlavors = addCone.flavor
    for flavor in newFlavors {
        print("\(flavor)")
}
}

listTopFlavor()


func orderCone(iceCream: IceCreamShop ) {
    var iceCream = iceCream
    
}
