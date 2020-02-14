import Foundation

struct Flavor {
    let name: String
    var rating: Double
    
    var fullName: String {
        "\(name) - \(rating)"
    }
}

enum Size {
    case small(String, Double)
    case medium(String, Double)
    case large(String, Double)
    
    var name: String {
        switch self {
        case .small(let n, _),
             .medium(let n, _),
             .large(let n, _):
            return n
        }
    }
    
    var price: Double {
        switch self {
        case .small(_, let p),
             .medium(_, let p),
             .large(_, let p):
            return p
        }
    }
    
    var fullName: String {
        "\(name) - $\(price)"
    }
}

struct Cone {
    let flavor: Flavor
    let topping: String
    let size: Size
    
    var fullName: String {
        "\(size.name) \(flavor.name) ice cream cone \(!topping.isEmpty ? "with " + topping : "")"
    }
    
    func eat() {
        print("\nThis \(fullName), was delicious!")
    }
}

struct IceCreamShop {
    let name: String
    let flavors: [Flavor]
    let toppings: [String]
    let sizes: [Size]
    var totalSales: Double = 0.0
    
    var menu: String {
        """
        f) List all flavors
        r) List the top flavors (greater than 4.0 rating)
        t) List all toppings
        s) List all sizes
        o) Order
        """
    }
    
    var flavorsMenu: String {
        var result = ""
        for (index, flavor) in flavors.enumerated() {
            result += "\(index + 1)) \(flavor.fullName)\n"
        }
        return result
    }
    
    var topFlavorsMenu: String {
        var results = Array<(index: Int, flavor: Flavor)>()
        for (index, flavor) in shop.flavors.enumerated() {
            if flavor.rating > 4.0 {
                results.append((index: index, flavor: flavor))
            }
        }
        
        if results.isEmpty {
            return "There are no top flavors at this time."
        }
        
        var stringResult = ""
        for val in results {
            stringResult += "\(val.index + 1)) \(val.flavor.fullName)\n"
        }
        
        return stringResult
    }
    
    var toppingsMenu: String {
        var result = ""
        for (index, topping) in shop.toppings.enumerated() {
            result += "\(index + 1)) \(topping)\n"
        }
        return result
    }
    
    
    var sizesMenu: String {
        var result = ""
        for (index, size) in shop.sizes.enumerated() {
            result += "\(index + 1)) \(size.fullName)\n"
        }
        return result
    }
}

class Clerk {
    let name: String
    var shop: IceCreamShop
    
    static let inputErrorMsg = "\nI'm sorry I didn't quite get that. Can you start over?"
    
    static func menuPrompt(_ pre: String, _ post: String) -> String {
        return """
               \n
               \(pre), ** use the identifier on the left-hand side when selecting a value **
               \(post)
               """
    }
    
    static func validateNumber(_ num: Int, _ options: [Any]) -> Bool {
        return 0 < num && num <= options.count
    }
    
    init(name: String, shop: IceCreamShop) {
        self.name = name
        self.shop = shop
    }
    
    func open(inputs: [String]) {
        var inputs = inputs
        
        print("\n\n****OPEN****\n\n\(shop.name) is now open for business!")
        print(Clerk.menuPrompt("Hello! I'm \(name), how may I help you today?", shop.menu))
        
        shop.totalSales = 0.0
        guard !inputs.isEmpty else {
            return
        }

        while !inputs.isEmpty {
            let choice = inputs.removeFirst()
            print("\nYou entered: \(choice)")
            
            switch choice {
            case "f":
                print(Clerk.menuPrompt("These are our flavors", shop.flavorsMenu))
            case "r":
                print(Clerk.menuPrompt("These are our top flavors", shop.topFlavorsMenu))
            case "t":
                print(Clerk.menuPrompt("These are our toppings", shop.toppingsMenu))
            case "s":
                print(Clerk.menuPrompt("These are our sizes", shop.sizesMenu))
            case "o":
                takeOrder(inputs: &inputs)
            default:
                print(Clerk.inputErrorMsg)
                continue
            }
        }
        
        print("\nThank you for visiting \(shop.name), we are now closed! Out total sales for the day were: \(shop.totalSales)")
        print("\n****CLOSED****")
    }
    
    func takeOrder(inputs: inout [String]) {
        guard inputs.count >= 3 else {
            print("\nI'm sorry, I'm unable to take your order at this time")
            return
        }
        
        print("\nI'm ready to take your order! What flavor would you like?")
        guard let flavorNumber = takeItemNumber(&inputs, shop.flavors) else { return }
        
        print("\nYou chose \(shop.flavors[flavorNumber - 1].name) flavor, what topping would you like?")
        guard let toppingNumber = takeItemNumber(&inputs, shop.toppings) else { return }
        
        print("\nYou chose \(shop.toppings[toppingNumber - 1]) topping, what size would you like?")
        guard let sizeNumber = takeItemNumber(&inputs, shop.sizes) else { return }
        
        let cone = Cone(flavor: shop.flavors[flavorNumber - 1],
                        topping: shop.toppings[toppingNumber - 1],
                        size: shop.sizes[sizeNumber - 1])
        
        print("\nYou've ordered a \(cone.fullName), your total will be \(cone.size.price)")
        shop.totalSales += cone.size.price
        
        print("\nEnjoy your cone!")
        cone.eat()
    }
    
    func takeItemNumber(_ inputs: inout [String], _ from: [Any]) -> Int? {
        let input = inputs.removeFirst()
        guard let itemNumber = Int(input),
                0 < itemNumber && itemNumber <= from.count else {
            print(Clerk.inputErrorMsg)
            return nil
        }
        
        print("\nYou entered: \(input)")
        
        return itemNumber
    }
}

var shop = IceCreamShop(
    name: "Sally Cones",
    flavors: [
        Flavor(name: "Vanilla", rating: 5.0),
        Flavor(name: "Chocolate", rating: 4.5),
        Flavor(name: "Mint", rating: 4.0)
    ],
    toppings: [
        "Chocolate Chips",
        "Fudge",
        "Sprinkles",
    ],
    sizes: [
        Size.small("Small", 2.99),
        Size.medium("Medium", 4.99),
        Size.large("Large", 7.99)
    ]
)

let clerk = Clerk(name: "Sally", shop: shop)

clerk.open(inputs: [
    "f", // list all flavors
    "r", // list top flavors
    "t", // list all toppings
    "s", // list all sizes
    "o", // start order
    "1", // choose first flavor
    "2", // choose second topping
    "3", // choose third size
])

clerk.open(inputs: [
    "q", // Invalid input
    "o", // start order
    "4", // choose an invalid flavor
    "o", // start order
    "3", // choose third flavor
    "1", // choose first topping
    "2", // Choose second size,
    "f", // list all flavors
    "o", // start order as final choice
])
