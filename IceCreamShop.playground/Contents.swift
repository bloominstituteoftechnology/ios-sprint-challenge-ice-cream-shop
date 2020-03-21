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
    print("Mmm! I love \(flavor.name).")
  }
}


class IceCreamShop {
  var flavors: [Flavor]
  var sizes: [Size]
  var toppings: [String]
  var totalSales: Double
  
  init(flavors: [Flavor], sizes: [Size], toppings: [String], totalSales: Double) {
    self.flavors = flavors
    self.sizes = sizes
    self.toppings = toppings
    self.totalSales = totalSales
  }
  
  // Top flavors available
  
  func listTopFlavors() {
    var faveFlavors = String()
    
    for flavor in flavors {
        if flavor.rating > 4.0 {
          faveFlavors.append("\(flavor.name) \n")
      }
    }
    print("Our top flavors are \(faveFlavors)")
  }

  func orderCone(flavor: Flavor, topping: String?, size: Size) -> Cone {
    let newCone = Cone(flavor: flavor, topping: topping, size: size)
    _ = size.rawValue
    
    totalSales += size.rawValue
    
    if let unwrappedTopping = topping {
      print("Your \(flavor.name) ice cream with \(unwrappedTopping) is $\(size.rawValue).")
    } else {
      print("Your \(flavor.name)is $\(size.rawValue).")
    }
    
    return newCone
    
  }
}




//Flavors
let chocolate = Flavor(name: "Chocolate", rating: 4.5)
let vanilla = Flavor(name: "Vanilla", rating: 4.0)
let strawberry = Flavor(name: "Strawberry", rating: 3.0)
let chocolateMaltedCrunch = Flavor(name: "Chocolate Malted Crunch", rating: 5.0)


let toppings = ["sprinkles", "nuts", "Oreos", "fruit"]
let sizes: [Size] = [.small, .medium, .large]

let iceCreamShop = IceCreamShop(flavors: [chocolate, vanilla, strawberry, chocolateMaltedCrunch], sizes: sizes, toppings: toppings, totalSales: 0)

iceCreamShop.listTopFlavors()

let newCone = iceCreamShop.orderCone(flavor: chocolateMaltedCrunch, topping: "Oreos", size: .large)

newCone.eat()

print(iceCreamShop.totalSales)

