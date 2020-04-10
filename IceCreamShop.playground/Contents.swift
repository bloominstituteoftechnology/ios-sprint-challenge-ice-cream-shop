
struct Flavor {
    var mName: String
    var mRating: Double
}

enum Size: Double {
    case SMALL = 3.99
    case MEDIUM = 4.99
    case LARGE = 5.99
}

struct Cone {
    var mFlavor: Flavor
    var mTopping: String?
    var mSize: Size
    
    func eat() {
        print("Mmm! I love \(mFlavor.mName)!")
    }
}

class IceCreamShop {
    private var mMenu: [Flavor]
    private var mToppings: [String]
    private var mTotalSales: Double
    
    var mSmall = Size.SMALL.rawValue
    var mMedium = Size.MEDIUM.rawValue
    var mLarge = Size.LARGE.rawValue
    
    init() {
        self.mMenu = [Flavor]()
        self.mToppings = [String]()
        self.mTotalSales = 0.0
    }
    
    func listTopFlavors() {
        var flavorArray = [String]()
        
        for flavor in mMenu {
            if flavor.mRating > 4.00 {
                flavorArray.append(flavor.mName)
            }
        }
        
        var flavorString = String()
        
        for i in 0..<flavorArray.count {
            if i < flavorArray.count - 1 {
                flavorString += ("\(flavorArray[i]), ")
            } else if i == flavorArray.count - 1 {
                flavorString += ("and \(flavorArray[i])")
            }
        }
        
        print("Our top flavors are \(flavorString)")
    }
    
    func orderCone(_ flavor: Flavor, _ topping: String?, _ size: Size) -> Cone? {
        
        // Optional Stretch Goal - Checking for existing flavor
        if !mMenu.contains(where: { (Flavor) -> Bool in
            Flavor.mName == flavor.mName && Flavor.mRating == flavor.mRating
        }) {
            return nil
        }
        
        let cone = Cone(mFlavor: flavor, mTopping: topping, mSize: size)
        addTotalSales(cone.mSize.rawValue)
        
        guard let unwrappedTopping = cone.mTopping else {
            print("Your \(cone.mFlavor.mName) ice cream is \(cone.mSize.rawValue)")
            return cone
        }
        
        print("Your \(cone.mFlavor.mName) ice cream with \(unwrappedTopping) is \(cone.mSize.rawValue)")
        return cone
    }
    
    func addFlavor(_ flavor: Flavor) {
        mMenu.append(flavor)
    }
    
    func addToppings(_ topping: String) {
        mToppings.append(topping)
    }
    
    func addTotalSales(_ salesAmount: Double) {
        mTotalSales += salesAmount
    }

    func getMenu() -> [Flavor] {
        return mMenu
    }
    
    func getToppings() -> [String] {
        return mToppings
    }
    
    func getTotalSales() -> Double {
        return mTotalSales
    }
}

let flavorArray: [Flavor] = [Flavor(mName: "Strawberry", mRating: 4.6),
                             Flavor(mName: "Chocolate", mRating: 4.9),
                             Flavor(mName: "Vanilla", mRating: 4.0),
                             Flavor(mName: "Coffee", mRating: 4.5),
                             Flavor(mName: "Black Licorice", mRating: 1.0),
                             Flavor(mName: "Earl Grey", mRating: 3.9)]

let toppingArray: [String] = ["Chocolate Chips", "Gummi Worms", "Almonds", "Peanuts", "Cookie Crumbles", "Assorted Fruit"]

let sizeArray: [Size] = [.SMALL, .MEDIUM, .LARGE]

let iceCreamShop = IceCreamShop()

for flavor in flavorArray {
    iceCreamShop.addFlavor(flavor)
}

for topping in toppingArray {
    iceCreamShop.addToppings(topping)
}

iceCreamShop.listTopFlavors()

let iceCreamCone: Cone

if let unwrappedRandomFlavor = iceCreamShop.getMenu().randomElement(),
    let unwrappedRandomTopping = iceCreamShop.getToppings().randomElement(),
    let unwrappedRandomSize = sizeArray.randomElement() {
    
    if let unwrappedIceCreamCone = iceCreamShop.orderCone(unwrappedRandomFlavor, unwrappedRandomTopping, unwrappedRandomSize) {
        iceCreamCone = unwrappedIceCreamCone
        iceCreamCone.eat()
    }
}

let iceCreamCone2 = iceCreamShop.orderCone(iceCreamShop.getMenu()[1], nil, Size.MEDIUM)
iceCreamCone2?.eat()


print("Today's total sales: \(iceCreamShop.getTotalSales())")

// Testing optional stretch goal
if let testIceCreamCone = iceCreamShop.orderCone(Flavor(mName: "Cotton Candy", mRating: 1.7), nil, Size.LARGE) {
    testIceCreamCone.eat()
} else {
    print("Flavor not found.")
}
