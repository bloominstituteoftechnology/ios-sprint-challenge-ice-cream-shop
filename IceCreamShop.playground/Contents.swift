//1. Create a struct called 'Flavor'

struct Flavor {
    var name: String
    var rating: Int
   
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
    let size = Size.self
    
    func eat() {
        print("Mmm! I love \(flavor.name)")
  
    }

}

// 4. Create a class called 'IceCreamShop'

class IceCreamShop {
    
    var flavors: [Flavor]
    var topping: [String]
    var size: [String]
    var totalSales: Int
    
    
}


// 5. customer asks which flavors are available

func listTopFlavors() {
    
}













