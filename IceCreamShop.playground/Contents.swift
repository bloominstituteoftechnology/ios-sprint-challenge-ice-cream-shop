struct Flavor {
    var name: String
    var rating: Int
    
}

enum Size: String {
    case small
    case medium
    case large
}

let small = 3.99
let medium = 4.49
let large = 4.99

struct Cone {
    let flavor: String
    let topping: String
    let size: Size
}

let myCone = Cone(flavor: "chocolate", topping: "chocolateSyrup", size: .medium)


func eat() {
   print("I love my \(myCone)")
}




class IceCreamShop {
    var name: String
    var totalSales: Double
    var flavor: Flavor
    
    init(name: String, totalSales: Double, flavor: Flavor) {
        self.name = name
        self.totalSales = totalSales
        self.flavor = flavor
    }
}

let flavor = (name: "Chocolate", rating: 5)
let flavor1 = (name: "Vanilla", rating: 4)
let flavor2 = (name: "Butter Pecan", rating: 3)
let flavor3 = (name: "Strawberry", rating: 5)
let flavor4 = (name: "Rocky Road", rating: 4)
let flavor5 = (name: "Bubblegum", rating: 2)
let flavor6 = (name: "Cotton Candy", rating: 2)


let flavors = [flavor, flavor1, flavor2, flavor3, flavor4, flavor5, flavor6]

func listTopFlavors() {
    for flavorChoices in flavors {
        if flavorChoices.rating >= 4 {
            print(flavorChoices)
        }
    }
}

listTopFlavors()

func orderCone(Cone: String) {
    
}





let flavor7 = (name: "Mint Chocolate Chip", rating: 5)
let flavor8 = (name: "Chocolate Chip Cookie Dough", rating: 4)

let sizes = [small, medium, large]

let topping = "Chocolate Fudge"
let topping1 = "Caramel Sauce"
let topping2 = "Strawberry Sauce"
let topping3 = "Nuts"
let topping4 = "Sprinkles"

let toppings = [topping, topping1, topping2, topping3, topping4]






