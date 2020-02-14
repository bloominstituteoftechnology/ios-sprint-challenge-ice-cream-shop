extension Array where Element == String {
    func formatCommaAnd() -> Self {
        guard self.count > 1 else { return self }
        return self.map({
            item -> String in
            if item != self.last { return "\(item), " }
            else { return "and \(item)" }
        })
    }
}

extension Cone {
    struct Flavor: Equatable {
        static func ==(lhs: Flavor, rhs: Flavor) {
            lhs.name.lowercased() == rhs.name.lowercased()
        }
        let name: String
        let rating: Double
    }
    enum Size: Double {
        case small = 3.99
        case medium = 5.99
        case large = 7.99
        case extraLarge = 11.99
    }
}
struct Cone {
    let flavor: Flavor
    let toppings: [String]
    let size: Size
    func eat() {
        print("Mmm! I love \(flavor.name)!")
    }
}
extension IceCreamShop {
    struct Menu {
        var flavors: [Cone.Flavor]
        var toppings: [String]
        var sizes: [Cone.Size]
    }
}
class IceCreamShop {
    init(menu: Menu) {
        self.menu = menu
    }
    let menu: Menu
    func listTopFlavors() {
        let topFlavors = menu.flavors.filter({ $0.rating >= 4.0 }).map({ $0.name })
        if topFlavors.isEmpty {
            print("Nobody seems to like any of our flavors.")
            return
        }
        let formattedTopFlavors = topFlavors.formatCommaAnd().joined()
        print("Our top flavors are \(formattedTopFlavors)")
    }
    func orderCone(flavor: Cone.Flavor, toppings: [String], size: Cone.Size) -> Cone? {
        guard menu.flavors.contains(flavor) else {
            print("Sorry, we don't have that flavor.")
            return nil
        }
        guard toppings.map({$0.lowercased()}).allSatisfy(menu.toppings.map({$0.lowercased()}).contains) else {
            let grammar = toppings.count > 1 ? "those toppings" : "that topping"
            print("Sorry, we don't have \(grammar).")
            return nil
        }
        guard menu.sizes.contains(size) else {
            print("Sorry we don't carry that size.")
            return nil
        }
        let price: Double = {
            let pricePerTopping = 0.5
            let toppingsPrice = pricePerTopping * Double(toppings.count)
            let priceOfSize = size.rawValue
            return toppingsPrice + priceOfSize
        }()
        let formattedToppings = toppings.formatCommaAnd().joined().lowercased()
        print("One \(size) Cone of \(flavor.name) ice cream with \(formattedToppings) coming right up!")
        print("That will be $\(price).")
        totalSales += price
        return Cone(flavor: flavor, toppings: toppings, size: size)
    }
    var totalSales = 0.0
}

let iceCreamShop: IceCreamShop = {
    let newShopMenu: IceCreamShop.Menu = {
        let newShopFlavors = [
            Cone.Flavor(name: "Vanilla", rating: 5.0),
            Cone.Flavor(name: "Chocolate", rating: 4.9),
            Cone.Flavor(name: "Strawberry", rating: 4.0),
            Cone.Flavor(name: "Raspberry", rating: 3.9),
            Cone.Flavor(name: "Bacon", rating: 2.1),
            Cone.Flavor(name: "Butter pecan", rating: 3.6),
            Cone.Flavor(name: "Cookie dough", rating: 4.3),
        ]
        let newShopToppings = [
            "Hot Fudge",
            "Sprinkles",
            "Caramel",
            "Oreos",
            "Peanut butter cups",
            "Cookie dough",
            "Whipped cream",
            "Nuts",
            "Fruit",
        ]
        let newShopSizes = [
            Cone.Size.small,
            Cone.Size.medium,
            Cone.Size.large,
        ]
        return IceCreamShop.Menu(flavors: newShopFlavors, toppings: newShopToppings, sizes: newShopSizes)
    }()
    return IceCreamShop(menu: newShopMenu)
}()

iceCreamShop.listTopFlavors()

let cone: Cone? = {
    let selectedFlavor = iceCreamShop.menu.flavors.randomElement()!
    var selectedToppings = [String]()
    for _ in 0...Int.random(in: 0...3) {
        var newTopping = iceCreamShop.menu.toppings.randomElement()!
        while selectedToppings.contains(newTopping) {
            newTopping = iceCreamShop.menu.toppings.randomElement()!
        }
        selectedToppings.append(newTopping)
    }
    let selectedSize = iceCreamShop.menu.sizes.randomElement()!
    return iceCreamShop.orderCone(flavor: selectedFlavor, toppings: selectedToppings, size: selectedSize)
}()

cone?.eat()
print("Total sales: \(iceCreamShop.totalSales)")
