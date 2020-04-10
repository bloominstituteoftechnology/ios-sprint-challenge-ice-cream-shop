//1.
struct Flavor: {
    var name: String
    var rating: Double
}
//the instance of a Flavor, like coffee example
let flavorOne = Flavor(name: "Strawberry", rating: 5.0)
let flavorTwo =  Flavor(name: "Cookies and Cream", rating: 4.1)
let flavorThree = Flavor(name: "Chocolate", rating: 3.1)
let flavorFour = Flavor(name: "Vanilla Bean", rating: 3.7)




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
    func listTopFlavors() {
        for top in self.flavor {
            if self.rating >= 4.0 {
           print("Our top flavor's are \(_).")
      } else {
            print("The flavor \(_) is the least popular.")
            }
        
 }
        
let flavorsShop = IceCreamShop(flavor: "Strawberry", size: "small", toppings: "sprinkles", totalSales: 0)

        
        
        
//5

func orderCone(flavor: Flavor, size: Size, toppings: String?) -> Cone? {
    let newCone: [Cone]
        
    
}

    }
}


//7























let newFlavor1 = "Pecan"
let newFlavor2 = "Peanut Butter"
let newFlavor3 = "Napoleon"
let allSizes = ["small", "medium", "large"]
let newToppings = ["mochi", "gummies", "coconut flakes"]

//8.
let newIceCreamShop: [Any] = [newFlavor1, newFlavor2, newFlavor3, allSizes, newToppings]



