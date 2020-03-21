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
  let topping: String
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
  
  func listTopFlavors() {
    let faveFlavors = ""
    
    for flavor in flavors {
      if flavor.rating > 4.0 {
        print("Our favorite flavors are \(faveFlavors).")
      }
    }
  }

  func orderCone (flavor: Flavor, topping: String?, size: Size) -> Cone {
    let newCone = Cone(flavor: flavor, topping: topping, size: size)
    let price = size.rawValue
    
    price += totalSales
    
    
    
    print("Price of your \(flavor.name) cone with \(topping) is $\(size.rawValue).")
  }
  
}

// Top flavors available




let chocolate = Flavor(name: "Chocolate", rating: 4.5)
let vanilla = Flavor(name: "Vanilla", rating: 4.0)
let strawberry = Flavor(name: "Strawberry", rating: 3.0)
let chocolateMaltedCrunch = Flavor(name: "Choclate Malted Crunch", rating: 5.0)

let toppings = ["sprinkles", "nuts", "Oreos", "fruit"]







