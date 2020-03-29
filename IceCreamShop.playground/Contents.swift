
// #1
struct Flavor {
    var name: String
    var rating: Int
}

// #2
enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}

// #3
struct Cone {
    let flavor: String
    let topping: String
    let size: Size
    
    func eat() {
        print ("mmm! I lover \(flavor.name)!")
    }
}



// #4
class IceCreamShop {
    var flavor: [Flavor]
    var size: [Size]
    var toppings: [String]
    var totalSales: Double
    
        
    init(shopFlavors: [Flavor], shopSizes: [Size], shopToppings:[String]){
        self.flavor = shopFlavors
        self.size = shopSizes
        self.toppings = shopToppings
        self.totalSales = 0
        
    }
    // #5
    func listTopFlavors() {
        var topFlavors = [Flavor.name]
        for flavor in IceCreamShop.flavor {
            if flavor.rating >= 4 {
                topFlavors += ("\(flavor)")
    }
    print("These are our top flavors: \(topFlavors)")
            
    }
    }
    // #6
    func orderCone(orderFlavor: Flavor, orderTopping: string?, orderSize: Size) -> Cone {
        let order = Cone(flavor: orderFlavor, topping: orderTopping ?? "", size: orderSize)
        switch orderSize {
        case .Large:
            self.totalSales += Size.large.rawValue
        case .medium:
            self.totalSales += Size.medium.rawValue
        case .small:
            self.totalSales += Size.small.rawValue
        default:
            ""
        }

let flavor1 = Flavor(name: "Chocolate", rating: 1)
let flavor2 = Flavor(name: "Strawberry", rating: 2)
let flavor3 = Flavor(name: "Mint Chip", rating: 3)
let flavor4 = Flavor(name: "Phish Food", rating: 4)
let flavor5 = Flavor(name: "Vanilla", rating: 5)

let zachsIcecream = IceCreamShop.self

zachsIcecream.listTopFlavors(IceCreamShop)
