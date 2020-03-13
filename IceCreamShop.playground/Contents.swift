
import UIKit


//Enums
enum Flavors: String, CaseIterable {
    case Orange_Sherbet = "Orange Sherbet"
    case Vanilla = "Vanilla"
    case Chocolate = "Chocolate"
    case Superman = "Superman"
}

enum Sizes: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}

enum Toppings: String {
    case Sprinkles = "Sprinkles"
    case MandMs = "M&M's"
    case Strawberrys = "Strawberrys"
}


//Structs
struct Flavor {
    var name: Flavors
    var rating: Int
}

struct Cone {
    let flavor: Flavor
    let topping: Toppings
    let size: Sizes
    
    func eat() {
        print("This \(flavor.name.rawValue) is really good!")
    }
}

//Classes
class IceCreamShop {
    
    //Constants
    let toppings: [Toppings] = [.MandMs, .Sprinkles, .Strawberrys]
    let flavors: [Flavors] = [.Chocolate, .Orange_Sherbet, .Superman, .Vanilla]
    let size: [Sizes] = [.small, .medium, .large]
    
    //Mutable
    var totalSales: Double
    
    //Functions
    func listtopFlavors() {
       // let temp_flavor = Flavors
        for i in Flavors.allCases {
            print(i.rawValue)
        }
    }
    
    init(totalSales: Double) {
        self.totalSales = totalSales
    }
}

/* let cone = Cone(flavor: .init(name: .Vanilla, rating: 4), topping: .Strawberrys, size: .medium) */


var tst = IceCreamShop(totalSales: 5.00)
tst.listtopFlavors()
