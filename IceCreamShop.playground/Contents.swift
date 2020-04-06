// Step 1

struct Flavor {
    let name: String
    let rating: Double
}


// Step 2
enum Size: Double {
    case small = 3.99
    
    case medium = 5.99
    
    case large = 7.99
}

// Step 3

struct Cone {
    let flavor: Flavor
    let toppings: String?
    let size: Size
    
    func eat() {
        print ("MMMMMM! I love \(flavor.name) ice cream on a hot day!" )
    }
}

// Step 4
class iceCreamShop {

  
    var menuEntry: [Flavor]
    var totalSales: Double
    var size: [Size]
    var toppings:[String]
    
    
    init (menuEntry: [Flavor], totalSales: Double = 0.00, size:[Size], toppings:[String]) {
        self.menuEntry = menuEntry
        self.totalSales = totalSales
        self.size = size
        self.toppings = toppings
}



// Step 5
func listTopFlavors() {
    
    
    var topFlavors = [String]()
    var topFlavorsOutput = "These are our most popular flavors right now: "
    
    
   
    for flavorlist in menuEntry {
        if flavorlist.rating > 4 {
            topFlavors.append(flavorlist.name)
          
        }
      
    }
     topFlavorsOutput += " \(topFlavors)"
    print(topFlavorsOutput)
}

// Step 6, generating the order cone function

 
 
    func orderCone (flavor: Flavor, topping: String?, size: Size) -> Cone {
        let orderedCone = Cone(flavor: flavor, toppings: topping ?? "", size: size)
       totalSales += orderedCone.size.rawValue
        
        
        var statement = "Your order of one \(orderedCone.size) sized \(orderedCone.flavor.name) ice cream cone"
        
        
        if let withTopping = topping {
             statement += " with \(withTopping) topping"
        }
             statement += " comes to $\(orderedCone.size.rawValue)"
        
            print(statement)
        
        return orderedCone
    }
}

// step 7, creating the flavors


let chocolate = Flavor(name: "Chocolate", rating: 3.7)

let tiger = Flavor(name: "Tiger Tail", rating: 6.1)

let rocky = Flavor(name: "Rocky Road", rating: 3.2)

let lemon = Flavor(name: "Iced Lemon", rating: 5.7)


let toppings = ["Rainbow sprinkles", "Caramel", "Chocolate Chips"]
let sizes = [Size.small, Size.medium, Size.large]





// step 8, create my ice cream shop

let myIceCreamstore = iceCreamShop(menuEntry: [chocolate, tiger, rocky, lemon], totalSales: 0, size: sizes, toppings: toppings)


// Step 9, calling the top flavor function for my store

myIceCreamstore.listTopFlavors()




// step 10 create variables to test it all out

var myFirstCustomer = myIceCreamstore.orderCone(flavor: tiger, topping: nil, size: .medium)

// step 11,  calling eat function first cone

myFirstCustomer.eat()


// Step 12, check total sales have increased

print(myIceCreamstore.totalSales)

// repeat with toppings this time

var myNextCustomer = myIceCreamstore.orderCone(flavor: lemon, topping: toppings[0], size: .large)

myNextCustomer.eat()

// check once more to see if totals increased with next cone ordered


print(myIceCreamstore.totalSales)



