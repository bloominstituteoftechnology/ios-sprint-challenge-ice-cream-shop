// Ice Cream Shop

struct Flavor {
    var name: String
    var rating: Int
}


enum Size : Double {
    case small = 3.99
    case medium  = 6.99
    case large = 9.99
}

struct Cone {
    let flavor : Flavor
    let size : Size
    let topping: String
    
    func eat() {
        print("\(flavor.name) is delicious. Can't wait to get more .")
    }
}

class IceCreamShop {
     
      var totalSales: Double
      var menu: [Cone] = []
   
    
    
    init(menu: [Cone], totalSales: Double) {
        self.menu = menu
        self.totalSales = totalSales
    }
    
    
    func listTopFlavors() {
            var goodFlavor = [String]()
            var topFlavorString = ""
        
        
          for icecream in menu {
            if icecream.flavor.rating > 4 {
                 goodFlavor.append(icecream.flavor.name)
                 topFlavorString = "Our top flavors are : \(goodFlavor)"
            } else {
                print("Our shop has no ice cream which rating is above 4.Sorry.")
            }
        }
         print(topFlavorString)
    }
   
    
    func orderCone( flavor: Flavor,  size: Size, topping: String) -> Cone? {
        switch flavor.name {
        case "Beer","Coffee","Strawberry","Green tea":
             let newCone = Cone(flavor: flavor, size: size, topping: topping)
               
                   totalSales += newCone.size.rawValue

                   let secondString = "Here is your \(newCone.flavor.name) ice cream with \(newCone.topping) topping, customer rating is \(newCone.flavor.rating),total price for you today is \(newCone.size.rawValue)."
                   print(secondString)
                  
                   return newCone
        default:
            print("We don't have it on the menu, please try another cone.")
            break
        }
       return nil
    }
    
    
}

let cones = [
           Cone(flavor: Flavor(name: "Beer", rating: 5), size: .medium, topping: "Nutella"),
           Cone(flavor: Flavor(name: "Coffee", rating: 5), size: .small, topping: "Spreadable Cinnamon Apple Caramel"),
           Cone(flavor: Flavor(name: "Strawberry", rating: 5), size: .large, topping: "Fresh Strawberry Sauce"),
           Cone(flavor: Flavor(name: "Green tea", rating: 5), size: .small, topping: "Oreos")
]

let iceCreamShop = IceCreamShop(menu: cones, totalSales: 0)
iceCreamShop.listTopFlavors()


let myCone = cones[1]
let yourCone = cones[2]
let dreamCone = Cone(flavor: Flavor(name: "Dream Cone", rating: 2), size: .large, topping: "Cappuccino")

iceCreamShop.orderCone(flavor: myCone.flavor, size: myCone.size, topping: myCone.topping)
iceCreamShop.orderCone(flavor: yourCone.flavor, size: yourCone.size, topping: yourCone.topping)
iceCreamShop.orderCone(flavor: dreamCone.flavor, size: dreamCone.size, topping: dreamCone.topping)

myCone.eat()
iceCreamShop.totalSales
print(iceCreamShop.totalSales)
