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

// MARK: Setting up types

class Item {
    var name: String
    var price: Double
    var isAvailable: Bool?
    
    // allows us to use new instances instead of apple giving us the default
    init(name: String, price: Double, isAvailable: Bool? = nil ) {
        self.name = name
        self.price = price
        self.isAvailable = isAvailable
    }
}

enum Coin: Double {
    case penny = 0.01
    case nickle = 0.05
    case dime = 0.10
    case quarter = 0.25
    case example = 1.29
}

enum Bill: Double {
    case one = 1.0
    case five = 5.0
    case ten = 10.0
    case twenty = 20.0
}

// MARK: Setting up Distributer Class

/// Types:
/// add items
/// needs to have a value for balance
/// needs to be able to have selectedItems
/// needs to create an array of items
/// needs to create an array of coinTypes
/// needs to create an array of of billTypes
///
/// Methods:
/// displayMethod
/// addCoinMethod
/// add billMethod
/// refundMethod
/// selectItemMethod


class Distributor {
    var items: [Item]
    let balance: Double
    let coinTypes: [Coin] = [.penny, .nickle, .dime, .quarter, .example]
    
    init(items: [Item]) {
        self.items = items
        self.balance = 0
    }
    
    func addItem(name: String, price: Double, isAvailable: Bool) {
        var newItem = Item(name: name,
                           price: price,
                           isAvailable: isAvailable)
        items.append(newItem)
    }
    
    func displayItems() {
        for (index, item) in items.enumerated() {
            print("(\(index). \(item.name) - $\(item.price))")
        }
    }
    
}


let items = [
            Item(name: "Cookies", price: 1.00, isAvailable: true),
            Item(name: "Chips", price: 0.5, isAvailable: false)
            ]

let distributor = Distributor(items: items)

distributor.displayItems()
// how would you sort items



