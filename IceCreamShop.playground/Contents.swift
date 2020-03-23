import UIKit

struct Flavor {
    let name: String
    let rating: Int
}

enum Size: Double {
    case small = 1.99
    case medium = 2.99
    case large = 3.99
}

struct Cone {
    let flavor: Flavor
    let topping: String
    let size: Size
    
    func eat() {
        print("MMM! I love \(self.flavor)")
    }
}

class IceCreamShop {
    var flavors: [Flavor]
    var toppings: [String]
    var sizes: [Size]
    var totalSales: Int
    
    let strawberry = Flavor(name: "Strawberry", rating: 5)
    let chocolate = Flavor(name: "Chocolate", rating: 5)
    let vanilla = Flavor(name: "Vanilla", rating: 3)
    
    init (totalSales: Int) {
        self.flavors = [strawberry, chocolate, vanilla]
        self.toppings = ["Sprinkles", "Chocolate Chips"]
        self.sizes = [Size.small, Size.medium, Size.large]
        self.totalSales = totalSales
    }
}

func listTopFlavors(_ shop: IceCreamShop) {
    
    for flavor in shop.flavors {
        if flavor.rating > 4 {
            print(flavor.name)
        }
    }
}

let dairyQueen = IceCreamShop(totalSales: 250000)
listTopFlavors(dairyQueen)

func orderCone(shop: IceCreamShop, flavor: Flavor, topping: String, size: Size) -> Cone? {
    let cone = Cone(flavor: flavor, topping: topping, size: size)
    shop.totalSales += Int(cone.size.rawValue)
    
    return cone
}

print(dairyQueen.totalSales)
orderCone(shop: dairyQueen, flavor: dairyQueen.chocolate, topping: dairyQueen.toppings[1], size: Size.medium)
print(dairyQueen.totalSales)

