import UIKit

//    notes contain earlier approaches

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
    
//    let strawberry = Flavor(name: "Strawberry", rating: 5)
//    let chocolate = Flavor(name: "Chocolate", rating: 5)
//    let vanilla = Flavor(name: "Vanilla", rating: 3)
    
    init (flavors: [Flavor], toppings: [String], sizes: [Size], totalSales: Int) {
        self.flavors = flavors
        self.toppings = toppings
//        self.sizes = [Size.small, Size.medium, Size.large]
        self.sizes = sizes
        self.totalSales = totalSales
    }
    
    func listTopFlavors() {
        
        for flavor in self.flavors {
            if flavor.rating > 4 {
                print(flavor.name)
            }
        }
    }
    
    func orderCone(flavor: Flavor, topping: String = "none", size: Size) -> Cone? {
        let cone = Cone(flavor: flavor, topping: topping, size: size)
        self.totalSales += Int(cone.size.rawValue)
        
        return cone
    }
}

//    func listTopFlavors(_ shop: IceCreamShop) {
//
//        for flavor in shop.flavors {
//            if flavor.rating > 4 {
//                print(flavor.name)
//            }
//        }
//    }

//    let dairyQueen = IceCreamShop(totalSales: 250000)
//    listTopFlavors(dairyQueen)

//    func orderCone(shop: IceCreamShop, flavor: Flavor, topping: String, size: Size) -> Cone? {
//        let cone = Cone(flavor: flavor, topping: topping, size: size)
//        shop.totalSales += Int(cone.size.rawValue)
//
//        return cone
//    }

//    print(dairyQueen.totalSales)
//    orderCone(shop: dairyQueen, flavor: dairyQueen.chocolate, topping: dairyQueen.toppings[1], size: Size.medium)
//    print(dairyQueen.totalSales)


let strawberry = Flavor(name: "Strawberry", rating: 5)
let chocolate = Flavor(name: "Chocolate", rating: 5)
let vanilla = Flavor(name: "Vanilla", rating: 3)

let sizes: [Size] = [Size.small, Size.medium, Size.large]

let toppings = ["Sprinkles", "Chocolate Chips"]

let baskinRobbins = IceCreamShop(flavors: [strawberry, chocolate, vanilla], toppings: toppings, sizes: sizes, totalSales: 180000)

baskinRobbins.listTopFlavors()

print(baskinRobbins.totalSales)
//    baskinRobbins.orderCone(flavor: baskinRobbins.flavors[2], topping: baskinRobbins.toppings[1], size: baskinRobbins.sizes[1])
//    baskinRobbins.orderCone(flavor: strawberry, size: Size.large)
let cone = baskinRobbins.orderCone(flavor: strawberry, size: Size.small)
cone?.eat()

print(baskinRobbins.totalSales)

