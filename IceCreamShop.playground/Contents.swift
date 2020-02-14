

struct Flavor {
    var name: String
    var rating: Double
}


enum Size: Double {
    case small = 1.99
    case medium = 2.99
    case large = 3.99
}

struct Cone {
    let flavor: String
    let topping: String
    let size: Size
    
    func eat() {
        
        print("I love \(flavor) cone!")
        
    }
    
}


class IceCreamShop {
   
    var totalSales: Double
    
}
