struct Flavor {
  let name: String
  let rating: Double
}


enum Size: Double {
  case small = 1.99
  case medium = 2.99
  case large = 3.99
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
  var sizes: [Size]
  var toppings: [String]
  let totalSales: Double
  
  init(flavors: [Flavor], sizes: [Size], toppings: [String], totalSales: Double) {
    self.flavors = flavors
    self.sizes = sizes
    self.toppings = toppings
    self.totalSales = totalSales
  }
  
  // Top flavors available
  
  func listTopFlavors() {
    let faveFlavors = " "
    
    for flavor in flavors {
      if flavor.rating > 4.0 {
        print("Our favorite flavors are \(faveFlavors).")
      }
    }
  }

  func orderCone(flavor: Flavor, topping: String?, size: Size) -> Cone {
    let newCone = Cone(flavor: flavor, topping: topping, size: size)
    var price = size.rawValue
    
    price += totalSales
    
    if let unwrappedTopping = topping {
      print("Your \(flavor.name) ice cream with \(unwrappedTopping) is $\(size.rawValue).")
    } else {
      print("Your \(flavor.name)is $\(size.rawValue).")
    }
    
    return newCone
    
  }
}






let chocolate = Flavor(name: "Chocolate", rating: 4.5)
let vanilla = Flavor(name: "Vanilla", rating: 4.0)
let strawberry = Flavor(name: "Strawberry", rating: 3.0)
let chocolateMaltedCrunch = Flavor(name: "Choclate Malted Crunch", rating: 5.0)

let toppings = ["sprinkles", "nuts", "Oreos", "fruit"]
let sizes: [Size] = [.small, .medium, .large]

let iceCreamShop = IceCreamShop(flavors: [chocolate, vanilla, strawberry, chocolateMaltedCrunch], sizes: sizes, toppings: toppings, totalSales: 0)

iceCreamShop.listTopFlavors()







