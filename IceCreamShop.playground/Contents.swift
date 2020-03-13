struct Flavor {
    let name: String
    let rating: Double
}

enum Size: Double {
    case Small = 3.99
    case Medium = 4.99
    case Large = 5.99
}

var totalSales = Size.Type.self

struct Cone {
    let flavor: [Flavor]
    let topping: String
    let size: Size?
}


class IceCreamShop {
    var flavors: [Flavor]
    var size: Size
    var topping: String?
 
    init(flavor: [Flavor], size: Size, topping: String) {
        self.flavors = flavor
        self.size = size
        self.topping = topping
    }
}



let flavor1 = Flavor(name: "Vanilla", rating: 8.7)
let flavor2 = Flavor(name: "Mint Chocolate Chip", rating: 9.2)
let flavor3 = Flavor(name: "Chocolate", rating: 10)
let flavor4 = Flavor(name: "Moose Tracks", rating: 10)

    var allFlavors = [flavor1, flavor2, flavor3, flavor4]


let myIceCreamShop = IceCreamShop(flavor: allFlavors, size: Size.Medium, topping: " ")


func eat(iceCreamShop: IceCreamShop) {
    print("You chose \(iceCreamShop.flavors)! I love that flavor! Enjoy!")
    }

func listofFlavors(iceCreamShop:IceCreamShop) {
    for flavor in iceCreamShop.flavors  {
        print(flavor)
    }
}
print(eat(iceCreamShop: myIceCreamShop))



func orderCone(iceCreamShop: Cone) {
    print(Cone(flavor: allFlavors, topping: " ", size: .Medium))
    }

print("Your chocolate ice cream is 4.99")

let cone = 1.00

listofFlavors(iceCreamShop: myIceCreamShop)


let myOrder = IceCreamShop(flavor: [flavor1] , size: .Large, topping: " ")

eat(iceCreamShop: myOrder )




