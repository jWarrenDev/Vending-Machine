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
    case one = 1.00
    case five = 5.00
    case ten = 10.00
    case twenty = 20.00
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
/// displayMethod  - Done
/// addCoinMethod
/// add billMethod
/// refundMethod
/// selectItemMethod
/// addItem Method - Done


class Distributor {
    var items: [Item]
    var balance: Double
    let coinTypes: [Coin] = [.penny, .nickle, .dime, .quarter, .example]
    var selectedItem: Item?
    
    init(items: [Item]) {
        self.items = items
        self.balance = 0
    }
    
    
    func insertCoin(_ coin: Coin) {
        switch coin {
        case .penny:
            balance += Coin.penny.rawValue
        case .nickle:
            balance += Coin.nickle.rawValue
        case .dime:
            balance += Coin.dime.rawValue
        case .quarter:
            balance += Coin.quarter.rawValue
        default:
            print("No coins")
        }
    }
    
    func insertBill(_ bill: Bill) {
        switch bill {
        case .one:
            balance += Bill.one.rawValue
        case .five:
            balance += Bill.five.rawValue
        case .ten:
            balance += Bill.ten.rawValue
        case .twenty:
            balance += Bill.twenty.rawValue
        default:
            print("No Bills")
        }
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
    
    func selectItem(_ index: Int) {
        guard index >= 0 && index < items.count else {
            print("Invalid item")
            return
        }
            // Wrong approach
//            for (index, item) in items.enumerated() {
//                print("You have selected \(item.name)")
//            }
            
        let item = items[index]
        selectedItem = item
        
        if let selectedItem = selectedItem {
            print("You have selected \(selectedItem.name) for the price of \(selectedItem.price)")
        }
       
    }
    
    func showBalance() {
        let formattedBalance = String(format: "%0.2f", balance)
        print(formattedBalance)
    }
    
    
    func refundBalance() {
        print("Your refund balance is \(balance).")
        balance = 0
    }
    
    
}


let items = [
            Item(name: "Cookies", price: 1.00, isAvailable: true),
            Item(name: "Chips", price: 0.5, isAvailable: false)
            ]

let distributor = Distributor(items: items)

distributor.displayItems()
// how would you sort items

distributor.insertCoin(.dime)
distributor.insertCoin(.quarter)
distributor.balance
distributor.refundBalance()
distributor.insertBill(.twenty)
distributor.insertCoin(.nickle)
distributor.insertCoin(.penny)
distributor.balance
distributor.refundBalance()

distributor.selectItem(1)
distributor.displayItems()

distributor.selectItem(4) // doesn't exist at this point
distributor.insertBill(.twenty)
distributor.showBalance()

distributor.insertCoin(.nickle)
distributor.insertCoin(.nickle)
distributor.insertCoin(.nickle)

distributor.showBalance()
