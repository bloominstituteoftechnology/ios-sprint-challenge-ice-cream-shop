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
    let topping: String
    let size: Size
 

 func eat() {
    print("Mmm! I love \(flavor.name)")
  }
 }
 
 class IceCreamShop {
    let flavor: [Flavor]
    let size: [Size]
    let toppings: [String]
    var totalSales: Double
    
    init(flavor: [Flavor], size: [Size], toppings: [String], totalSales: Double) {
        self.flavor = flavor
        self.size = size
        self.toppings = toppings
        self.totalSales = totalSales
    }
 }
 
 func listTopFlavors() {
   
    print("Our top flav
     for flavor in IceCreamShop {
        if Flavor.rating > 4 {
            print("\(flavor.name)")
            return
        } else {
            return
        }
    }
 }
