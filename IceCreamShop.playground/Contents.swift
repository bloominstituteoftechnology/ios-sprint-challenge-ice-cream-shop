//IceCreamShop(class)
    //Menu
        //Cone(Struct) - properties (constants) that hold a flavor, topping (as a String), and size.
            //Flavor(Struct)
                //name
                //rating
            //topping: String
            //Size(Enum): Double rawvalue represents price
                //small = 3.99
                //medium
                //large
            //func eat() { print(text that includes the name of the cone's flavor. For example: "Mmm! I love \(flavor)!") }
    //func listTopFlavors() { print string of the names of each flavor in the shop's flavors array whose rating is over 4.0. For example, the string might say "Our top flavors are \(topFlavors)." }
    //orderCone(flavor:topping:size:) -> Cone? {
        //Cone();
        //tellPriceOf(cone:) { accounting for optional topping; print(conePrice) }
        //totalSales += priceOfCone; }
    
    //totalSales: $$

// At the bottom of the playground, create a few Flavor constants, an array of sizes, and an array of toppings.
//let ics = IceCreamShop(:)
//ics.listTopFlavors
//let cone = ics.orderCone(:)
//cone.eat()    //without unwrapping
//print(ics.totalSales)  //increased

//STRETCH:
    //listTopFlavors: format strings
        //what if there are no flavors rated above 4.0?
        //grammatical commas + "and" before last flavor
    //orderCone: confirm flavor availability
