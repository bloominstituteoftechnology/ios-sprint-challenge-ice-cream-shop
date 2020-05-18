
struct Flavor {
    var name: String
    var rating: Double
}

enum Size: Double {
    case small = 1.50
    case medium = 2.60
    case large = 3.50
}

struct Cone {
    let flavor: Flavor
    let topping: String
    let size: Size.RawValue
    
    func eat() {
        print("Yum, I love \(<#_#>)!)"
    }
}

class IceCreamShop {
    var totalSales: Size
    var flavorsMenu: [Flavor]
    
    
    init(totalSales: Double, flavorsMenu: String) {
        self.totalSales = totalSales
        self.flavorsMenu = []
    }

}

//    Flavor(name: "Triple Cookie Dough", rating: 9.8)
    var flavor1 = Flavor(name: "Raspberry Gelato", rating: 3.7)
    var flavor2 = Flavor(name: "Double Choc Fantasy", rating: 10)
    var flavor3 = Flavor(name: "Caramel Dream", rating: 9.2)
//
//    flavorsMenu.


func listTopFlavors() {
    for rating in Cone {
        if rating > 4.0 {
            print("Our top flavors are \(Cone.flavor)")
        }
    }
}

func orderCone(flavor: Flavor, topping: String, size: Double) -> Cone? {
    let myCone: Cone
    
    
    
}
