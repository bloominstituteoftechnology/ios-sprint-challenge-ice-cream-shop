

struct Flavor{
    var name : String
    var rating: Int
}

enum Size: Double{
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}

struct Toppings{
    var topping: String
}

struct Cone{
    var flavor: Flavor
    var topping: Toppings?
    var size: Size
    
    func eat(){
        print("Wow! I loved it!")
    }
}

class IceCreamShop{
    var shopName: String
    var menuFlavors: [Flavor]
    var menuToppings: [Toppings]
    var totalSales: Double
    
    init(shopName:String){
        self.shopName = shopName
        self.menuFlavors = []
        self.menuToppings = []
        self.totalSales = 0.0
    }
    
    //This function adds flavors to the Flavors Menu
    func addFlavorToMenu(flavor: Flavor){
        menuFlavors.append(flavor)
    }
    
    //This function adds toppings to the Toppings Menu
    func addToppingsToMenu(topping: Toppings){
        menuToppings.append(topping)
    }
    
    //This function will list our flavors of icecream that have achevied over a 4 in rating!
    func listTopFlavors(){
        print("We have a few best selling flavors that have acheived a rating over 4! They are:")
        for flavor in menuFlavors{
            if flavor.rating > 4{
                print("Flavor: \(flavor.name) Rating: \(flavor.rating)")
        }
      }
   }
    
    
}

// These are the flavors of Ice Cream we have available at our shop!
let chocolate = Flavor(name: "Chocolate", rating: 3)
let vanilla = Flavor(name: "Vanilla", rating: 2)
let cherryChip = Flavor(name: "Cherry Chip", rating: 10)
let rockyRoad = Flavor(name: "Rocky Road", rating: 9)

// These are the toppings we have available at our shop!
let fudge = Toppings(topping: "Fudge")
let peanuts = Toppings(topping: "Peanuts")
let whippedCream = Toppings(topping: "Whipped Cream")

//Creating our first instance of our Ice Cream Shop
let myIceCreamShop = IceCreamShop(shopName: "Lambda's Luxurious IceCream Palace")

//Adding flavors to the flavor menu
myIceCreamShop.addFlavorToMenu(flavor: chocolate)
myIceCreamShop.addFlavorToMenu(flavor: vanilla)
myIceCreamShop.addFlavorToMenu(flavor: cherryChip)
myIceCreamShop.addFlavorToMenu(flavor: rockyRoad)

//Adding toppings to the toppings menu
myIceCreamShop.addToppingsToMenu(topping: fudge)
myIceCreamShop.addToppingsToMenu(topping: peanuts)
myIceCreamShop.addToppingsToMenu(topping: whippedCream)


