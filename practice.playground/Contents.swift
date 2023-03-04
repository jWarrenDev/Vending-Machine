import Foundation

// Working on Types

class Item {
    var name: String
    var price: Double
    
    init(name: String, price: Double) {
        self.name = name
        self.price = price
    }
}

enum Coin: Double {
    case penny = 0.01
    case nickle = 0.05
    case dime = 0.10
    case quarter = 0.25
}

enum Bill: Double {
    case one = 1.00
    case five = 5.00
    case ten = 10.00
    case twenty = 20.00
}


class Distributor {
    var items: [Item]
    var selectedItem: Item?
    var balance: Double
    
    init(items: [Item]) {
        self.items = items
        self.balance = 0
    }
    
    func displayItem() {
        for (index, item ) in items.enumerated() {
            print("Item #\(index). \(item.name) - $\(item.price)")
        }
    }
    
    func selectItems(_ index: Int) {
        guard index >= 0 && index < items.count else {
            print("Invalid Item")
            return
        }
        
        let item = items[index]
        selectedItem = item
        
        if let selectedItem = selectedItem {
            print("You have selected \(selectedItem.name) for the price of $\(item.price)")
        }
    }
    
    func dispenseItems() {
        guard let item = selectedItem else {
            print("No Item Selected")
            return
        }
        
        guard item.price <= balance else {
            print("Insufficent Balance")
            return
        }
        
        print("Dispensins \(item.name)")
        balance -= item.price
        selectedItem = nil
    }
}

let items = [Item(name: "Apple", price: 1.12)]

let distributor = Distributor(items: items)
distributor.displayItem()
distributor.selectItems(0)
