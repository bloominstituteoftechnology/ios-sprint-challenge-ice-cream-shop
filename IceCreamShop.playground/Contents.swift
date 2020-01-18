//1. Create a struct called 'Flavor'

struct Flavor {
    var name: String
    var rating: Double
   
}



// 2. Creat an enum called 'Size'

enum Size: Double  {
    
    case small = 3.99
    case medium = 4.99
    case large = 5.99
    
}




// 3. Create a struct called 'Cone'

struct Cone {
    
    let flavor: Flavor
    let topping: String?
    let size: Size
    
    func eat() {
        print("Mmm! I love \(flavor.name)")
  
    }

}

// 4. Create a class called 'IceCreamShop'

class IceCreamShop {
    
    var flavors: [Flavor]
    var topping: [String]
    var size: [Size]
    var totalSales: Double
    
    init(flavors: [Flavor], topping: [String], size: [Size], totalSales: Double) {
        self.flavors = flavors
        self.topping = topping
        self.size = size
        self.totalSales = totalSales
    }
    //flavors(flavor1.rating)

    // 5. customer asks which flavors are available



    func listTopFlavors() {
       
        for flavor in flavors  {
            
            if flavor.rating > 4.0 {
            
                print("\(flavor.name) are the best")
        
            
        }
       
        }
    }

    func orderCone(flavor: Flavor, topping: String?, size: Size) -> Cone? {
        
        let newCone = Cone(flavor: flavor, topping: topping, size: size)
        
        totalSales += newCone.size.rawValue
        
        if let topping = newCone.topping {
            
            print("\(newCone.flavor) is your ice cream flavor, with \(topping) and it is \(newCone.size.rawValue)")
            
        }
        
        return newCone
            
        
    }

}

var flavor1 = Flavor(name: "chocolate", rating: 5)
var flavor2 = Flavor(name: "Vanilla", rating: 8)
var flavor3 = Flavor(name: "Caramel", rating: 3)


let newShop = IceCreamShop(flavors: [flavor1, flavor2, flavor3], topping: ["Peanuts", "Chocolate chips", "Cherries"], size: [.small, .medium, .large], totalSales: 0.0)


newShop.listTopFlavors()
    
let newCone = newShop.orderCone(flavor: flavor3, topping: "Peanuts", size: .large)

newCone?.eat()
    
    //    switch flavors {
    //    case is [Flavor]: flavor1.rating > Int(4.0); print(flavor1)
    //    case is [Flavor]: flavor2.rating > Int(4.0); print(flavor2)
    //    case is [Flavor]: flavor3.rating > Int(4.0); print(flavor3)
    //
    //    default:
    //        print("They're all bad")
    //    }


// 6. Customers need to order a cone











// 8. Use the constants to initialize a new 'IceCreamShop' constant
    
    


// 9. Call the shop's 'listTopFlavors' function and make sure it runs correctly



// 10. Creat a new 'Cone' constant. Use the shop's 'orderCone' function to assign the constant a 'Cone' value


// 11. Using that new 'Cone' constant, call its 'eat' function without unwrapping the constant


// 12. Print the shop's 'totalSales' and make sure that it has increased since you orded a cone



// 7. at the bottom of the playground create a few 'Flavor' constants, an array of sizes, and an array of toppings


