struct Flavor {
    let name: String
    let rating: Int
}




enum Size: Double  {
    case small = 1.99
    case medium = 2.99
    case large = 3.99
        
}


struct Cone {
    let flavor: Flavor
    let size: Size.RawValue
        func eat() {
            print("Mmm! I love \(flavor.name)!")
    }
}


class IceCreamShop{
    var menuFlavors: [Flavor]
    var totalSales: Double = 0
    var sizes: [Size]
    let name: String
    
     
    init(name: String) {
        self.name = name
        self.menuFlavors = []
        self.sizes = []

    }

func addFlavor(flavor: Flavor) {
        menuFlavors.append(flavor)
    }
func addSize(size: Size) {
        sizes.append(size)
    }

func listTopFlavors() {
        print("We have have some flavors that are rated higher than 4:")
        for flavor in menuFlavors{
            if flavor.rating > 4{
                print("Flavor: \(flavor.name) Rating: \(flavor.rating)")
            }
}
    }


func orderCone(flavor: Flavor, size: Size) -> Cone? {
      
    let newCone = Cone(flavor: flavor, size: size.rawValue)
    totalSales+=size.rawValue
    print("Your \(newCone.flavor.name) cone comes out to \(newCone.size).")
            return newCone
        }
    }
let iceCreamShoppe = IceCreamShop(name: "IceCreamGoblins")

let strawberry = Flavor(name: "Stawberry", rating: 10)
let chocolate = Flavor(name: "Chocolate", rating: 0)
let circusAnimals = Flavor(name: "CircusAnimals", rating: 5)

let sizeSmall = Size.small
let sizeMedium = Size.medium
let sizeLarge = Size.large


iceCreamShoppe.addFlavor(flavor: strawberry)
iceCreamShoppe.addFlavor(flavor: chocolate)
iceCreamShoppe.addFlavor(flavor: circusAnimals)

iceCreamShoppe.addSize(size: sizeSmall)
iceCreamShoppe.addSize(size: sizeMedium)
iceCreamShoppe.addSize(size: sizeLarge)

iceCreamShoppe.listTopFlavors()

iceCreamShoppe.orderCone(flavor: strawberry, size: sizeMedium)
let mySecondOrder = iceCreamShoppe.orderCone(flavor: chocolate, size: sizeLarge)
//print("our total sales are \(iceCreamShoppe.totalSales)")


