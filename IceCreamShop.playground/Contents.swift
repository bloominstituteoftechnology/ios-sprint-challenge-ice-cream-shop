import UIKit

struct Flavor {
    let chocolate: String
    let chocolateRating: Int
    let vanilla: String
    let vanillaRating: Int
    let mint: String
    let mintRating: Int
    let peanutButter: String
    let peanutButterRating: Int
}



enum Size: String {
  case small = "Small"
    case medium = "Medium"
    case large = "Large"
    case xl = "Extra Large"
}
struct Cone{
    let waffleCone: String
    let cakeCones: String
    let chocolateDipped: String
    let topping: String?


}
struct Toppings {
    let sprinkles: String
    let chocolateSyrup = "Chocolate Syrup"
    let costOfSprinkes = 0.25
    let costOfChocolateSyrup = 1.00
}


func eat(flavor: String){
        print("Mmm! I love \(flavor)")
}


eat(flavor: "Chocolate!")

class IceCreamShop {
    var allFlavors: Flavor
    var topping: String
  
        
    init(allFlavors:Flavor, topping: String) {
        self.allFlavors = allFlavors
        self.topping = topping
    }
    }
    func listTopFlavors(){
        let flavors = Flavor(chocolate: "Chocolate Ice Cream", chocolateRating: 8, vanilla: "Vanilla Ice Cream", vanillaRating: 4, mint: "Mint Ice Cream", mintRating: 9, peanutButter: "Peanut Butter Ice Cream", peanutButterRating: 10)
        let goodRating1 = (flavors.chocolate, flavors.chocolateRating)
        let goodRating2 = (flavors.mint, flavors.mintRating)
        let goodRating3 = (flavors.peanutButter, flavors.peanutButterRating)
        
        let highRatingFlavors = (goodRating1, goodRating2, goodRating3)

     return print("Our top flavors are \(highRatingFlavors)")
//
        }

listTopFlavors()

var totalPriceOfWaffleCone = 0.75
var totalPriceOfChocolateCone = 1.00
var totalPriceOfCakeCone = 0.90
var totalPriceOfTopping = 0.25
var costOfChoclate = 2.00
var costOfVanilla = 2.00
let costOfMint =  2.00
let costOfPeanutButter = 2.00
var costOfOrder = 5.23
let allFlavors = Flavor(chocolate: "Chocolate Ice Cream", chocolateRating: 7, vanilla: "Vanilla", vanillaRating: 4, mint: "Mint", mintRating: 9, peanutButter: "Peanut Butter Ice Cream", peanutButterRating: 10)
//func orderACone(cone: Cone?) -> (Cone){
//    var totalPriceOfWaffleCone = 0.75
//    var totalPriceOfChocolateCone = 1.00
//    var totalPriceOfCakeCone = 0.90
//    var totalPriceOfTopping = 0.25
//
//    let allcones = (totalPriceOfWaffleCone, totalPriceOfCakeCone, totalPriceOfChocolateCone)
//
//return allcones += 1
//}
    




 print("Your total cost for the \(allFlavors.mint) and with the waffle cone, comes out to \(totalPriceOfWaffleCone + costOfMint), how would you like to pay?")
        
//        if let unwrappedChocolate = chocolateCone {
//            print("Your cone: \(chocolateCone ?? chocolateCone))
 

let allTheFlavors = [allFlavors]
let allSizes = (Size.small, Size.medium, Size.large)
print(allSizes)

listTopFlavors()
orderACone()
