
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
    var mTopping: String
    var mSize: Size
    
    func eat() {
        print("Mmm! I love \(mFlavor.mName)")
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
                flavorString += (flavorArray[i] + ", ")
            } else if i == flavorArray.count - 1 {
                flavorString += flavorArray[i]
            }
        }
        
        print("Our top flavors are \(flavorString)")
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


