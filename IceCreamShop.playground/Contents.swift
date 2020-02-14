


// Project

struct Flavor {
   var flavorA: String
    var flavorB: String
    var flavorC: String
    var rating: Double
}

enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.78
}

 
struct Cone {
    let flavor: [Flavor]
    let topping: String = "Caramel"
    let size: Size
    
    func eat() {
        print("Mmm! I love \(flavor)")
    }
}

