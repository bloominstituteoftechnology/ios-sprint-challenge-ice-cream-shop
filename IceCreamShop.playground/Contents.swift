

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
    var name: String
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
    var menuSizes: [Size]
    var totalSales: Double
    
    
    init(shopName:String){
        self.shopName = shopName
        self.menuFlavors = []
        self.menuToppings = []
        self.menuSizes = []
        self.totalSales = 0
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
    
    //This function will help us order a cone at our icecream shop and give us a rundown of what we ordered
    func orderCone(flavor: Flavor, topping: Toppings, size: Size) -> Cone?{
        
        //Helps up initialize an order and adds the sale to our total sales variable
        let newOrder = Cone(flavor: flavor, topping: topping, size: size)
        totalSales + size.rawValue
        
        //These four lines of code help us figure out wether or not a topping has been passed into the funtion. If so, print the topping. If not, print a blank string.
        var stringTopping: String = " "
        if let unknownTopping = newOrder.topping{
            stringTopping = "\(unknownTopping.name)"
        }
       
        //This print statment gives you a "recipt" of your order
        print("Thank you for your purchase at Lambda's Luxurious Ice Cream Palace!\nHere are the detals of your order:")
        print("The flavor you chose: \(newOrder.flavor.name)")
        print("The topping you chose: \(stringTopping)")
        print("The size you chose: \(newOrder.size)")
        print("The total of your order was: \(newOrder.size.rawValue)")
        return newOrder
    }
    
}

// These are the flavors of Ice Cream we have available at our shop!
let chocolate = Flavor(name: "Chocolate", rating: 3)
let vanilla = Flavor(name: "Vanilla", rating: 2)
let cherryChip = Flavor(name: "Cherry Chip", rating: 10)
let rockyRoad = Flavor(name: "Rocky Road", rating: 9)

// These are the toppings we have available at our shop!
let fudge = Toppings(name: "Fudge")
let peanuts = Toppings(name: "Peanuts")
let whippedCream = Toppings(name: "Whipped Cream")


//Creating our first instance of our Ice Cream Shop
let myIceCreamShop = IceCreamShop(shopName: "Lambda's Luxurious Ice Cream Palace")

//Adding flavors to the flavor menu
myIceCreamShop.addFlavorToMenu(flavor: chocolate)
myIceCreamShop.addFlavorToMenu(flavor: vanilla)
myIceCreamShop.addFlavorToMenu(flavor: cherryChip)
myIceCreamShop.addFlavorToMenu(flavor: rockyRoad)

//Adding toppings to the toppings menu
myIceCreamShop.addToppingsToMenu(topping: fudge)
myIceCreamShop.addToppingsToMenu(topping: peanuts)
myIceCreamShop.addToppingsToMenu(topping: whippedCream)



myIceCreamShop.orderCone(flavor: cherryChip, topping: fudge, size: Size.small)

