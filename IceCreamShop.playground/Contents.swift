struct Flavor {
    var name: String
    var rating: Int
}

enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case Large = 5.99
}

struct Cone {
    let flavor: String
    let topping: String
    let size: Size
}
/*
func eat() {
    for flavor in Cone {
    var currentFlavor = ""
        if let flavor = cone.flavor {
        currentFlavor = flavor
    }
print("mmmmmm! I love \(currentFlavor)")
}
}
*/
// ^^^^FINISH THIS PART LAST? ^^^^^


class IceCreamShop {
    var flavor: [Flavor]
    var size: [Size]
    var toppings: [String]
        
    init(){
        self.flavor = []
        self.size = []
        self.toppings = []
}
    func add(flavor: Flavor) {
        Flavor.append(flavor)
    }
}
//Add total sales here ^^

let flavor1 = Flavor(name: "Chocolate", rating: 1)
let flavor2 = Flavor(name: "Strawberry", rating: 2)
let flavor3 = Flavor(name: "Mint Chip", rating: 3)
let flavor4 = Flavor(name: "Phish Food", rating: 4)
let flavor5 = Flavor(name: "Vanilla", rating: 5)

let zachsIcecream = IceCreamShop.self


/*
zachsIcecream.add(flavor: flavor1)
zachsIcecream.add(flavor: flavor2)
zachsIcecream.add(flavor: flavor3)
zachsIcecream.add(flavor: flavor4)
zachsIcecream.add(flavor: flavor5)
*/
//^^^^ IDK WHY THIS WONT WORK^^^

func listTopFlavors() {
    var topFlavors = [String]
    for flavor in IceCreamShop.flavor {
        if let flavor.rating >= 4 {
            topFlavors += ("\(flavor)")
}
print("These are our top flavors: \(topFlavors)")
}
}


//THIS WAS DIFFICULT
