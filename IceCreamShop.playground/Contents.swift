 struct Flavor {
    var name: String
    var rating: Double
 }
 
 enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
 }

 
 struct Cone {
    let flavor: Flavor
    let topping: String?
    let size: Size
 

 func eat() {
    print("Mmm! I love \(flavor.name)")
  }
 }
 
 class IceCreamShop {
    var flavors: [Flavor]
    var size: [Size]
    var toppings: [String]
    var totalSales: Double
    
    init(flavor: [Flavor], size: [Size], toppings: [String], totalSales: Double) {
        self.flavors = flavor
        self.size = size
        self.toppings = toppings
        self.totalSales = totalSales
    }
    
    func listTopFlavors() {
        var topFlavors: [String] = []
        
       for flavor in flavors {
           if flavor.rating > 4 {
            topFlavors.append("\(flavor.name)" + ", ")
            return
           } else {
            return
           }
        }
         print("Our top flavors are \(topFlavors).")
    }
 }
 
 func orderCone(flavor: Flavor, topping: String?, size: Size) -> Cone? {
    let newCone: Cone = Cone(flavor: flavor, topping: topping!, size: size)
    
    if let unwrappedTopping = topping {
        print("Your \(flavor.name) ice cream with \(unwrappedTopping) is $\(size.rawValue).")
        } else {
        print("Your \(flavor.name) ice cream is $\(size.rawValue)")
    }
     return newCone
 }
 
 let chocolate = Flavor(name: "Chocolate", rating: 5)
 let vanilla = Flavor(name: "Vanilla", rating: 3)
 let strawberry = Flavor(name: "Strawberry", rating: 4)
 let nutella = Flavor(name: "Nutella", rating: 5)

 var beckysIceCreamShop = IceCreamShop(flavor: [chocolate, vanilla, strawberry, nutella], size: [.large, .small, .medium], toppings: ["chocolate shell", "sprinkles", "caramel drizzle"], totalSales: 0)
 
 beckysIceCreamShop.listTopFlavors()
 
