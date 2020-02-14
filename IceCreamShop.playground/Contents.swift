// 1.
struct Flavor {
    var name: String
    var rating: Double
}

// 2.
enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}

//// 3.
//struct Cone {
//    let flavor: Flavor
//    let topping: String
//    let size: Size
//    
//    func eat() {
//        print("Mmm! I love \(self.flavor)!")
//    }
//}
//
//// 4.
//class IceCreamShop {
//    var flavors: [Flavor]
//    var sizes: Size
//    var toppings: [String]
//    var totalSales: Double
//}
//
//// 5.
