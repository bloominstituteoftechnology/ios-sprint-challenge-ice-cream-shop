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
        print ("MMMMMM! I love \(flavor) ice cream!" )
    }
}

// Step 4
class iceCreamShop {

  
    var menuEntry: [Cone] = []
    var totalSales: Double
    
    init (menuEntry: [Cone], totalSales: Double = 0.00) {
        self.menuEntry = menuEntry
        self.totalSales = totalSales
}



// Step 5
func listTopFlavors() {
    
    
    var topFlavors = [String]()
    var topFlavorsOutput = ""
    
    
    for flavorlist in menuEntry {
        if flavorlist.flavor.rating > 4 {
            topFlavors.append(flavorlist.flavor.name)
            topFlavorsOutput = "These are the most popular flavors: \(topFlavors)"
            
            
        } else {
            continue
        }
        print(topFlavorsOutput)
    }
}
}
// Step 6

 
 
    func orderCone (flavor: Flavor, topping: String?, size: Size) -> Cone {
        let orderedCone = Cone(flavor: flavor, toppings: topping ?? "", size: size)
        var totalSales = orderedCone.size.rawValue
        
        
        var statement = "Your order of \(orderedCone.size) size \(orderedCone.flavor) cone "
        
        
        if let withTopping = topping {
             statement += " with \(withTopping) topping"
        }
             statement += " will be \(totalSales)"
        
            print(statement)
        
        return orderedCone
    }


let chocolate = Flavor(name: "Chocolate", rating: 5.2)

let tiger = Flavor(name: "Tiger Tail", rating: 6.1)

let rocky = Flavor(name: "Rocky Road", rating: 3.2)

let lemon = Flavor(name: "Lemon Ice", rating: 5.7)


let toppings = ["Rainbow sprinkle", "Caramel", "Chocolate Chips"]
let sizes = [Size.small, Size.medium, Size.large]


let iceCreamCones = [ Cone(flavor: chocolate, toppings: toppings[1], size: sizes[1]),
                      Cone(flavor: tiger, toppings: toppings[2], size: sizes[2]),
                      Cone(flavor: rocky, toppings: toppings[0], size: sizes[0]),
                      Cone(flavor: lemon, toppings: toppings[1], size: sizes[1])]




let myIceCreamstore = iceCreamShop(menuEntry: iceCreamCones)


//  This is as far as I got. Struggled tonight heavily as my mind is just not coping right now.  I got too bogged down and neglected to ask for help too. I really need to review and rework so I can do this faster. Typically the projects take me much more than 3 hours.
