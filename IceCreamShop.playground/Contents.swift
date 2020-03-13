// IceCreamShop - by Harmony Radley



struct Flavor {
    var name: String
    var rating: Double
}



enum Size: Double {
    case small = 2.99
    case medium = 3.99
    case large = 4.99
}

struct Cone {
    let flavor: Flavor
    let topping: String
    let size: [Size]
    
    
    func eat() {
        print("Mmm! I love \(flavor.name)!")
    }
}



class IceCreamShop {
    
      var flavors: [Flavor]
      var size: [Size]
      var toppings: [String]
      var totalSales: Double = 0.0
      
      init(flavors: [Flavor], size: [Size], toppings: [String], totalSales: Double) {
          self.flavors = flavors
          self.size = size
          self.toppings = toppings
          self.totalSales = totalSales
      }
    
    
    func listTopFlavors() {
        var topFlavors = ""
        
        for flavor in flavors {
            if flavor.rating >= 4.0 {
                
                topFlavors += flavor.name
                
                print("Our top flavors are \(topFlavors)")
                
            }
        }
    }
    
    
    
    func orderCone(flavor: Flavor, size: Size, topping: String?) -> Cone? {
        let newCone = Cone(flavor: flavor, topping: topping, size: size)
        let price = size.rawValue
        
        totalSales += price
        
        if let unwrappedTopping = topping {
            print("Your \(flavor.name) ice cream with \(unwrappedTopping) is \(size.rawValue)")
        } else {
            print("Your \(flavor.name) ice cream is \(size.rawValue)")
        }
        
        
        return newCone
    }
}












