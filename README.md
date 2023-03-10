# Vending-Machine
Setting up a Vending Machine with Swift

## Requirements

The vending machine should have the following features:

1. Display the available items and their prices.
2. Accept coins and bills as payment.
3. Dispense the selected item.
4. Return change if the amount inserted is greater than the item price.
5. Refund the money if the transaction is canceled.

## Design

We will use the following classes and data structures to design the vending machine:

### Item Class

The Item class represents an item that is available in the vending machine. It has the following properties:

- `name`: the name of the item.
- `price`: the price of the item.

### VendingMachine Class

The VendingMachine class represents the vending machine. It has the following properties:

- `items`: an array of Item objects representing the available items.
- `balance`: the current balance of the machine.
- `selectedItem`: the currently selected item.
- `coinTypes`: an array of coin types accepted by the machine.
- `billTypes`: an array of bill types accepted by the machine.

It has the following methods:

- `displayItems()`: displays the available items and their prices.
- `insertCoin(_ coin: Coin)`: inserts a coin into the machine.
- `insertBill(_ bill: Bill)`: inserts a bill into the machine.
- `selectItem(_ index: Int)`: selects an item from the available items.
- `dispenseItem()`: dispenses the selected item.
- `refund()`: refunds the money inserted into the machine.

### Coin and Bill Enums

The Coin and Bill enums represent the types of coins and bills accepted by the vending machine. They have the following cases:

### Coin

- `.penny`: a penny.
- `.nickel`: a nickel.
- `.dime`: a dime.
- `.quarter`: a quarter.

### Bill

- `.one`: a one dollar bill.
- `.five`: a five dollar bill.
- `.ten`: a ten dollar bill.
- `.twenty`: a twenty dollar bill.
