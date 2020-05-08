
struct Flavor {
    let name: String
    let description: String
    let rating: Int
    let ingredents: String
}

enum Size: Double {
    case kidsCup = 2.49
    case smallCup = 2.99
    case mediumCup = 3.99
    case largeCup = 4.99
    case kidsCone = 2.69
    case smallCone = 3.09
    case mediumCone = 4.09
    case largeCone = 5.09
    case waffleCone = 5.49
}


enum SizeDescription: String {
    case kidsCup = "Kids Cup with Kids Scoop"
    case smallCup = "Small Cup with 1 Scoop"
    case mediumCup = "Medium Cup with 2 Scoops"
    case largeCup = "Large Cup with 3 Scoops"
    case kidsCone = "Regular Cone with Kids Cone"
    case smallCone = "Regular Cone with 1 Scoop"
    case mediumCone = "Regular Cone with 2 Scoops"
    case largeCone = "Regular Cone with 3 Scoops"
    case waffleCone = "Waffle Cone with 3 Large Scoops"
}

struct Cone {
    
}
