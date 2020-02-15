extension Array where Element == String {
    func formatCommaAnd() -> String {
        guard self.count > 1 else { return self.joined() }
        return self.map({ item -> String in
            if item == self.last { return "and \(item)" }
            else if self.count == 2 { return "\(item) " }
            else { return "\(item), " }
        }).joined()
    }
    
    /// Returns true if every string in the original array is contained by the input array, case insensitive
    func isContained(by array: [String]) -> Bool {
        let thisArray = self.map({$0.lowercased()})
        let thatArray = array.map({$0.lowercased()})
        return thisArray.allSatisfy(thatArray.contains)
    }
}



struct Cone: CustomStringConvertible {
    let flavor: Flavor
    let size: Size
    let toppings: [String]
    
    var description: String {
        let formattedToppings = toppings.count > 0 ? "with \(toppings.formatCommaAnd().lowercased()) " : ""
        return "\(size) cone of \(flavor.name.lowercased()) ice cream \(formattedToppings)"
    }
    
    var price: Double {
        let pricePerTopping = 0.5
        let toppingsPrice = pricePerTopping * Double(toppings.count)
        let sizePrice = size.rawValue
        return toppingsPrice + sizePrice
    }
    
    func eat() {
        print("Mmm! I love \(flavor.name)!")
    }
}
extension Cone {
    struct Flavor: Equatable {
        let name: String
        var rating: Double
        
        static func ==(lhs: Flavor, rhs: Flavor) {
            lhs.name.lowercased() == rhs.name.lowercased()
        }
    }
    enum Size: Double {
        case small = 3.99
        case medium = 5.99
        case large = 7.99
        case extraLarge = 11.99
    }
}



class IceCreamShop {
    let menu: Menu
    var totalSales = 0.0
    
    init(menu: Menu) {
        self.menu = menu
    }
    
    func listTopFlavors() {
        let topFlavors = menu.flavors.filter({ $0.rating > 4.0 }).map({ $0.name })
        if topFlavors.isEmpty {
            print("Nobody seems to like any of our flavors.")
            return
        }
        print("Our top flavors are \(topFlavors.formatCommaAnd()).")
    }
    
    func orderCone(flavor: String, size: Cone.Size, toppings: [String] = []) -> Cone? {
        guard let flavor = menu.flavors.first(where: {$0.name == flavor }) else {
            print("Sorry, we don't have that flavor.")
            return nil
        }
        guard menu.sizes.contains(size) else {
            print("Sorry, we don't carry that size.")
            return nil
        }
        guard toppings.isContained(by: menu.toppings) else {
            let requestedTopping = toppings.count > 1 ? "those toppings" : "that topping"
            print("Sorry, we don't have \(requestedTopping).")
            return nil
        }
        
        let cone = Cone(flavor: flavor, size: size, toppings: toppings)
        print("One \(cone.description)coming right up!")
        print("That will be $\(cone.price).")
        totalSales += cone.price
        return cone
    }
}
extension IceCreamShop {
    struct Menu {
        var flavors: [Cone.Flavor]
        var sizes: [Cone.Size]
        var toppings: [String]
    }
}



let iceCreamShop: IceCreamShop = {
    let newShopMenu: IceCreamShop.Menu = {
        let newShopFlavors = [
            Cone.Flavor(name: "Vanilla", rating: 5.0),
            Cone.Flavor(name: "Chocolate", rating: 4.9),
            Cone.Flavor(name: "Strawberry", rating: 4.0),
            Cone.Flavor(name: "Raspberry", rating: 3.9),
            Cone.Flavor(name: "Bacon bits", rating: 2.1),
            Cone.Flavor(name: "Butter pecan", rating: 3.6),
            Cone.Flavor(name: "Cookie dough", rating: 4.3),
        ]
        let newShopToppings = [
            "Hot Fudge",
            "Sprinkles",
            "Caramel",
            "Oreos",
            "Peanut butter cups",
            "Whipped cream",
            "Nuts",
            "Fruit",
        ]
        let newShopSizes = [
            Cone.Size.small,
            Cone.Size.medium,
            Cone.Size.large,
        ]
        return IceCreamShop.Menu(flavors: newShopFlavors, sizes: newShopSizes, toppings: newShopToppings)
    }()
    return IceCreamShop(menu: newShopMenu)
}()

iceCreamShop.listTopFlavors()

let cone: Cone? = {
    let selectedFlavor = iceCreamShop.menu.flavors.map({ $0.name }).randomElement()!
    var selectedToppings = [String]()
    if Bool.random() || Bool.random() {
        for _ in 0...Int.random(in: 0...2) {
            var newTopping = iceCreamShop.menu.toppings.randomElement()!
            while selectedToppings.contains(newTopping) {
                newTopping = iceCreamShop.menu.toppings.randomElement()!
            }
            selectedToppings.append(newTopping)
        }
    }
    let selectedSize = iceCreamShop.menu.sizes.randomElement()!
    return iceCreamShop.orderCone(flavor: selectedFlavor, size: selectedSize, toppings: selectedToppings)
}()

cone?.eat()
print("Total sales: \(iceCreamShop.totalSales)")
