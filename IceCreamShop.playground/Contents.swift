1
struct Flavor{
    var name: String
    var rating: Int
}

2
enum Size: Double{
    case small = 1.99
    case medium = 2.99
    case large = 3.99
}
let small = Size.small
let medium = Size.medium
let large = Size.large

3
struct Cone{
    let topping = "vanilla"
    let size = "large"
    
}
func eat(){
    let myFlavor = "vanilla"
    print("Mmm! I love \(myFlavor) !")
    
}
eat()

4
class IceCreamShop{
    var flavors = ["vanilla", "strawberry", "chocolate"]
    var sizes = ["small", "medium", "large"]
    var toppings = ["sprinkles", "snickers", "m&ms"]
    var totalSales = 0.00
    var rating = [1, 2, 3, 4, 5]
}

5
func topFlavors(){
let flavors = ["vanilla", "strawberry", "chocolate"]
var index = 1
for topFlavors in flavors {
    print("\(index). \(topFlavors)")
    index += 1
}
}
topFlavors()
  
6
func orderCone(flavor: String, topping: String, Size: String) -> String?{
    let cindysCone = orderCone(flavor: "strawberry", topping: "sprinkles", Size: "medium")
    let price = medium
    return cindysCone
    }

7


