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
