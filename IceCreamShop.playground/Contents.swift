
struct Flavor{
    var name: String
    var rating: Int
}


enum Size: Double{
    case small = 1.99
    case medium = 2.99
    case large = 3.99
}


struct Cone{
    let topping: String
    let size: String
    
}
func eat(){
    let myFlavor = "vanilla"
    print("Mmm! I love \(myFlavor) !")
    
}
eat()


class IceCreamShop{
    var flavors: Flavor
    var sizes: [Size]
    var toppings: [Cone]
    
    
    init(flavors: Flavor, sizes: [Size], toppings: [Cone] ) {
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
    }
    

    func listTopFlavors() {

        if let flavors = flavors{

            for flavor in flavors {
                print("Our top flavors are \(myFlavor)")
          //  }else{
                print("We are out of our top flavors")

            }
        }
    }
    func orderCone(flavor: String, topping: String, Size: String) -> String?{
        let cindysCone = orderCone(flavor: "strawberry", topping: "sprinkles", Size: "medium")
        
        return cindysCone
    }


}


6

let totalSales1 = 2.99
let vanilla: String
let strawberry: String
let chocolate: String

7
let flavor1 = Flavor(name: vanilla, rating: 5)
let flavor2 = Flavor(name: strawberry, rating: 2)
let flavor3 = Flavor(name: chocolate, rating: 1)
let sizes = ["small", "medium", "large"]
let toppings = ["sprinkles", "snickers", "m&ms"]

8
let iceCreamShop = [flavor1, flavor2, flavor3]

9
//listTopFlavors()

10
let cone = eat.self


11
eat()

12
let totalSales = totalSales1 * 3
print(totalSales)


//Spencer, Can we go over this when you have more than 10 minutes and not flustered?
