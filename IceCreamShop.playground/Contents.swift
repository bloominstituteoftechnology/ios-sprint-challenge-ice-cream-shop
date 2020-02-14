
struct Flavor {
    var name: String
    var rating: Double
}

enum Size: Double {
    case small = 3.99
    case medium = 4.75
    case large = 5.50
}

struct Cone {
    let flavor: Flavor
    let topping: String?
    let size: Size
    
    func eat() {
        print("Mmm! I love \(flavor)")
    }
}

class IceCreamShop {
    var flavors: [Flavor] = []
    var sizes: [Size] = []
    var toppings: [String]
    var totalSales: Double
    
    init(flavors: Flavor, sizes: Size, toppings: [String], totalSales: Double) {
        self.flavors = [flavors]
        self.sizes = [sizes]
        self.toppings = []
        self.totalSales = totalSales
    }

func listTopFlavors() {
    
    for flavor in flavors {
        if flavor.rating >= 4.0 {
            print("Our topflavors are \(flavor)")
      }
    }
  }
}

func orderCone(flavor: Flavor, topping: String?, size: Size) -> Cone? {
    
    let newCone = Cone(flavor: flavor, topping: topping, size: size)
    let newConePrice = newCone.size.rawValue
    
    if topping != nil {
        print("Your \(flavor) ice cream with \(topping) is \(size.rawValue)")
    } else {
        print("Your \(flavor) ice cream is \(size.rawValue)")
    }
    return newCone
}
