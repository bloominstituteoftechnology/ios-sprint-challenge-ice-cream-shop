struct Flavor {
    let name: [String]
    let rating: Double
}

enum Size: Double  {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}

struct Cone {
    let flavor : Flavor
    let topping: String
    let size: Size

    func eat() {
        print("Mmm! I Love \(flavor)")
    }
}

class IceCreamShop {
    let menu = Cone(flavor: Flavor(name: [flavorsAvailable] , rating: String) , topping: String, size: Size(rawValue: selectedSize))
    
}

var selectedSize: String = " "

var flavorsAvailable = [""]
