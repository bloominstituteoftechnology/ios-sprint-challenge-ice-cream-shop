//1.
struct Flavor {
    var name: String
    var rating: Double
}

let flavorOne = Flavor(name: "Strawberry", rating: 5.0)
let flavorTwo =  Flavor(name: "Cookies and Cream", rating: 4.1)
let flavorThree = Flavor(name: "Chocolate", rating: 3.1)
let flavorFour = Flavor(name: "Vanilla Bean", rating: 3.7)

//function for top flavors


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
        print("Mmm! I love /(flavor.name) ice cream!")
    }
    
}



//4.
class IceCreamShop {
    var flavor: Flavor
    var size: [Size]
    var toppings: [String?]
    var totalSales: Double
    
    init(flavor: Flavor, size: [Size], toppings: [String?], totalSales: Double) {
        
        self.flavor = flavor
        self.size = size
        self.toppings = toppings
        self.totalSales = totalSales
    }
    func listTopFlavors() {
        for top in flavor {
            if flavor.rating >= 4.0 {
           print("Our top flavor's are \(top.flavor.name).")
      } else {
            print("The flavor \(top.flavor.name) is the least popular.")
            }
   
        
 }
//5

func orderCone(flavor: Flavor, size: Size, toppings: String?) -> Cone? {
    let newCone: [Cone]
        
    
}

    }
}
