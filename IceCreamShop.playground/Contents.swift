struct Flavor {
    let name: String
    let rating: Double
}

enum Size: Double {
    case Small = 3.99
    case Medium = 4.99
    case Large = 5.99
}

struct Cone {
    let flavor: Flavor
    let topping: String
    let size: Size
}


class IceCreamShop {
    var flavor: Flavor
    var size: Size
    var topping: String
 
    init(flavor: Flavor, size: Size, topping: String) {
        self.flavor = flavor
        self.size = size
        self.topping = topping
    }
}

var totalSales = Size(rawValue: 0)

func eat(iceCreamShop: IceCreamShop) {
    print("You chose \(iceCreamShop.flavor)! I love that flavor! Enjoy!")
    }




