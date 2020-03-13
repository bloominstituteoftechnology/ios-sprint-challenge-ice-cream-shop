struct Flavor {
    let name: String
    let rating: String

}

enum Size: Double {
    case small
    case medium
    case large
}

enum Toppings: String {
    case sprinkles
    case almonds
}

//enum MyFlavors: String {
//    case chocolate
//    case vanilla
//}

struct Cone {
    let size: Size
    let flavor: [Flavor]
    let toppings: [Toppings]
    
//    func eat() -> String {
//    print("MMM! I love \(flavor)!")
//            }
    }


class IceCreamShop {
    var cones: [Cone] = []
    
    func orderCone (size: Size, toppings: [Toppings], flavor: [Flavor]) {
        let cone = Cone(size: <#T##Size#>, flavor: Flavor, toppings: Toppings)
        cones.append(cone)
    }
    
//    func TotalSales(amount: Double) -> String {
        
    }
    
    

