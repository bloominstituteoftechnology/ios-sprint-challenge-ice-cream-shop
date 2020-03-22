import UIKit

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
    let flavores: Flavor
    let topping: String
    let size: Size
    
   
    func eat() {
        
        
        print("Wow! I love \(flavores.name)")
        
    }
}

class IceCreamShop {

    var arrayOfToppings: [String]
    var arrayOfFlavors: [Flavor]
    var arrayOfSize: [Size]
    var totalSales: Double
    
    init() {
        self.arrayOfFlavors = []
        self.arrayOfSize = [.large, .medium, .small]
        self.arrayOfToppings = []
        totalSales = 0
    }
    
    
    func listOfTopFlavors() {
        print("Our top flavors: ")
        for topFlavor in arrayOfFlavors {
            if topFlavor.rating >= 4 {
                print(topFlavor.name)
            
            }
        }
    }
    
    func orderCone(flavor: String, topping: String, size: Size) -> Cone? {
        // Check order for correctness
        var correctOrder: Bool = false
        // Match the order with existing menu values
        var flavorIn : Flavor = Flavor(name: "Name", rating: 0)
        
        totalSales += size.rawValue
        // Find a flavor
        for fl in arrayOfFlavors {

            if fl.name == flavor {
                flavorIn = fl
                correctOrder = true
                break
            }
            correctOrder = false
            
        }
        // Find the topping
        if !arrayOfToppings.contains(topping){
            print("Sorry! We don't have this topping")
            correctOrder = false
        }
        // Return the cone to the customer if order is correct
        if correctOrder == true {
            return createCone(flavor: flavorIn, topping: topping, size: size)
        } else {
            print("Sorry. Wrong input of flavors")
        }
        return nil
    }
       
        
        func createCone(flavor: Flavor, topping: String, size: Size) -> Cone? {
            totalSales += size.rawValue
            let chosenCone: Cone = Cone(flavores: flavor, topping: topping, size: size)
            
            if topping == "no topping" {
                print("Your \(flavor.name) ice cream is $\(size.rawValue)")
            } else {
                print("Your \(flavor.name) ice cream with \(topping) is $\(size.rawValue)")
            }
            return chosenCone
        }
            
    }

    


// Flavors:
let vanilla = Flavor(name: "Vanilla", rating: 4.33)
let chocolate = Flavor(name: "Chocolate", rating: 4.6)
let cheesecake = Flavor(name: "Cheesecake", rating: 3)
let halfAndHalf = Flavor(name: "Half Vanilla Half Chocolate", rating: 5.0)

// arrays of flavors, toppings
let toppings: [String] = ["Honey", "Chocolate Syrop", "Whipped Cream", "Caramel"]
let arrayOfFlavors: [Flavor] = [vanilla, chocolate, cheesecake, halfAndHalf]
// Initialize Ice Creame shop:
var shop = IceCreamShop()
for top in toppings{
    shop.arrayOfToppings.append(top)
}
for flav in arrayOfFlavors{
    shop.arrayOfFlavors.append(flav)
}

shop.listOfTopFlavors()
print("\n")
// Create cone:
var cone: Cone? = shop.orderCone(flavor: "Cheesecake", topping: "Chocolate Syrop", size: .medium)
cone?.eat()
print("\n")
shop.orderCone(flavor: "Vanilla", topping: "Honey", size: .large)
print("Total sales \(shop.totalSales)")




  




