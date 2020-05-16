
enum Size: Double {
    case small = 2.40
    case medium = 3.50
    case large = 5.00
}

struct Flavor {
    var name: String
    var rating: Float
    
    init(name: String, rating: Float) {
        self.name = name
        self.rating = rating
    }
}

struct Cone {
    var flavor: String
    var topping: String?
    var size: Size
    

    func eat() {
        print("chocolate")
    }
}


class IceCreamShop {
    var toppings: [String]
    var sizes: [Size]
    var flavors: [Flavor]
    var totalSales: Double = Double()
    
    
    init() {
        self.toppings = ["Caramel", "Green tea", "Rocky road"]
        self.sizes = [.small, .medium, .large]
        self.flavors = [Flavor(name: "Chocolate", rating: 4.0), Flavor(name: "Pinacolada", rating: 5.0), Flavor(name: "Butter Pecan", rating: 6.0), Flavor(name: "Vanilla", rating: 2.0), Flavor(name: "Strawberry", rating: 3.0)]
    }
    
        
    
    func listTopFlavors() {
       var topFlavorNames = [String]()
        
        for flavor in self.flavors {
            if flavor.rating > 4.0 {
                topFlavorNames.append(flavor.name)
            }
        }
        print(topFlavorNames)
    }
    
    func orderCone(cone: Cone) -> Cone? {
        let cone = Cone(flavor: "Vanilla", topping: "Yellow Cake", size: .small)
        
        totalSales += cone.size.rawValue
        
        if let topping = cone.topping {
            print("Your \(cone.flavor) with \(topping) is \(cone.size.rawValue)")
        } else {
            print("Your \(cone.flavor) is \(cone.size.rawValue)")
        }
        
        return cone
    }
}

let vanillaFlavor = Flavor(name: "Vanilla", rating: 4.5)
let coffeeFlavor = Flavor(name: "Coffee", rating: 3.2)
let orangeFlavor = Flavor(name: "Orange", rating: 5.4)

let arrayOfSizes: [Size] = [.small, .medium, .large]

let arrayOfToppings: [String] = ["Pineapple", "Yellow Cake", "Peanut"]


let iceCreamShop = IceCreamShop()

iceCreamShop.listTopFlavors()


let cone = Cone(flavor: "Vanilla", topping: "Yellow Cake", size: .large)
iceCreamShop.orderCone(cone: cone)


cone.eat()

iceCreamShop.totalSales
