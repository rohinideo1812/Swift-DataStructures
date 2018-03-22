//
//  main.swift
//  Queue
//
//  Created by BridgeLabz on 22/03/18.
//  Copyright © 2018 BridgeLabz. All rights reserved.
//

import Foundation
var queue = Queue()
print("Enter the amount in the Bank")
var amount = queue.acceptinput()
print("Enter the number of people in queue")
var people = queue.acceptinput()
for i in 1...people{
    queue.enqueue(data: i)
    
}
while !queue.isEmpty(){
    print("Enter the choice\n1-Deposit\n2-Withdraw\n")
    print("Person Enter your choice")
    let choice = queue.acceptinput()
    if choice == 1{
        print("Enter the amount to be deposited")
        let amountdeposit = queue.acceptinput()
        amount += amountdeposit
        print("Amount lest with bank \(amount)")
        print("Thank You")
        queue.dequeue()
        print("People in queue - ")
        queue.showdata()
    }
    else if amount != 0{
        print("Enter the amount to be withdraw")
        let amountwithdraw = queue.acceptinput()
        if amountwithdraw > amount{
            print("No cash")
            queue.dequeue()
        }
        else{
            amount -= amountwithdraw
            print("Amount left with bank \(amount)")
            print("Take your cash")
            queue.dequeue()
            print("People left")
            queue.showdata()
        }

    }
    else{
        print("No amount left")
        queue.dequeue()
        print("People left")
        queue.showdata()
    }
}

