
import UIKit


//Enums
enum Flavors: String, CaseIterable {
    case Orange_Sherbet = "Orange Sherbet"
    case Vanilla = "Vanilla"
    case Chocolate = "Chocolate"
    case Superman = "Superman"
}

enum Sizes: Double, CaseIterable {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}

enum Toppings: Double, CaseIterable {
    case Sprinkles = 0.25
    case MandMs = 0.50
    case Strawberrys = 1.00
}

//Structs
struct Flavor {
    var name: Flavors
    var rating: Int
}

struct Cone {
    let flavor: Flavor?
    let topping: Toppings?
    let size: Sizes?
    
    var price: String = "0.00"
    
    func eat() {
        if let temp_flavor = flavor
        {
            print("This \(temp_flavor.name.rawValue) is really good!")
        } else {
            print("This cone doesn't have any icecream!")
        }
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
    
    init(totalSales: Double) {
        self.totalSales = totalSales
    }
}

var myShop = IceCreamShop(totalSales: 0.00)

//Functions
func listTopFlavors() {
    for i in flavor_array {
        if (i.rating >= 4)
        {
            print("\(i.name.rawValue) has a \(i.rating) out of 10 rating!")
        }
    }
}

func orderCone(flavor: Flavor?, topping: Toppings?, size: Sizes?) -> Cone? {
    
    var cone: Cone? = Cone(flavor: flavor, topping: topping, size: size)
    
    if let temp_size = size {
        if let temp_topping = topping {
            cone?.price = String(temp_size.rawValue + temp_topping.rawValue)
            myShop.totalSales += temp_size.rawValue + temp_topping.rawValue
        } else {
            cone?.price = String(temp_size.rawValue)
            myShop.totalSales += temp_size.rawValue
        }
    } else {
        print("You needs to pick a size before you buy a cone!")
    }
    
    return cone
}

//Flavor Ratings
var flavor_array: [Flavor] = []
flavor_array.append(Flavor(name: .Chocolate, rating: 4))
flavor_array.append(Flavor(name: .Vanilla, rating: 3))
flavor_array.append(Flavor(name: .Orange_Sherbet, rating: 9))
flavor_array.append(Flavor(name: .Superman, rating: 1))


listTopFlavors()
/* let cone = Cone(flavor: .init(name: .Vanilla, rating: 4), topping: .Strawberrys, size: .medium) */


