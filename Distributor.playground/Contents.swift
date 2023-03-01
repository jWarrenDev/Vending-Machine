import UIKit
import Foundation

/*
 
 Design a Vending Machine Machine
 
 1. Define that class that you would want to use
    - Items
        - Name: String
        - Price: Double
 
 2. Define the class for the type of monies
    - Coins (enum)
        - Penny
        - Nickle
        - Dime
        - Quarter
        - Dollar
 
 3. Write functions for the the vending machine
    - Insert Coins
    - Balance of all the coins
    - Set Enough to buy
    - Set Enough to refund

 
 */

class Item {
    var name: String
    var price: Double
    var isAvailable: Bool?
    
    // allows us to use new instances instead of apple giving us the default
    init(name: String, price: Double, isAvailable: Bool? ) {
        self.name = name
        self.price = price
        self.isAvailable
    }
}

enum Coin {
    case penny
    case nickle
    case dime
    case quarteer
}

enum Bill {
    case one
    case five
    case ten
    case twenty
}


