import UIKit


//1.
struct Flavor {
    var name: String
    var rating: Double
}

//2.
enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}

//3.
struct Cone {
    let flavor: [Flavor]
    let topping: String?
    let size: Size
    
    func eat() {
        print("Mmm! I love /(flavorOne) ice cream!")
    }
    
}

//4.
class IceCreamShop {
    var flavor: [Flavor]
    var size: [Size]
    var toppings: [String?]
    var totalSales: Double
    var rating: Double
    
    init(flavor: [Flavor], size: [Size], toppings: [String?], totalSales: Double, rating: Double) {
        self.flavor = flavor
        self.size = size
        self.toppings = toppings
        self.totalSales = totalSales
        self.rating = rating
    }
    
    func listOfTopFlavors() {
        // for in loop
        for myflavors in flavor {
            if myflavors.rating >= 4.0 {
                print("Our top flavor's are \(myflavors.name).")
            }
        }
    }
    func orderCone(flavor: Flavor, topping: String?, size: Size) -> Cone {
        let newCone = Cone(flavor: [flavor], topping: <#String?#>, size: size)
        totalSales += size.rawValue
        //if else statement
        if let toppings = topping {
            print("Your \(flavor.name) with \(toppings) is \(size.rawValue)")
        } else {
            print("Your \(flavor.name) is \(size.rawValue)")
        }
            return newCone
    }
    
}

let flavorOne = Flavor(name: "Strawberry", rating: 5.0)
let flavorTwo =  Flavor(name: "Cookies and Cream", rating: 4.1)
let flavorThree = Flavor(name: "Chocolate", rating: 3.1)
let flavorFour = Flavor(name: "Vanilla Bean", rating: 3.7)

let sprinkles = "sprinkles"
let chocolateChips = "chocolate chips"
let flakes = "coconut flakes"



let allRatings: Double
let totalSales: Double
let allFlavors = [flavorOne, flavorTwo, flavorThree, flavorFour]
let allSizes = [Size.small, Size.medium, Size.large]
let allToppings = [sprinkles, chocolateChips, flakes]

let MyFlavorsShop = IceCreamShop(flavor: allFlavors, size: allSizes, toppings: allToppings, totalSales: 79.23, rating: 3.9)

let newCone = MyFlavorsShop.orderCone(flavor: flavorOne, topping: sprinkles, size: .medium)

newCone.eat()

print(MyFlavorsShop.totalSales)

