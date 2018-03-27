/******************************************************************************
 *  Purpose: Program that stimulates banking cash counter using queue.
 *
 *  @author Rohini
 *  @version 4.0
 *  @since   22-03-2018
 *
 ******************************************************************************/

import Foundation
var i = 0
var queue = Queue()
var queue1 = Queue()
print("Enter the amount in the Bank")
var amount = queue.acceptinput()
print("Enter the number of people in queue")
var people = queue.acceptinput()
for i in 1...people{
    queue.enqueue(data: i)
    
}
while !queue.isEmpty(){
    print("Enter the choice\n1-Deposit\n2-Withdraw\n")
    print("Person - Enter your choice")
    let choice = queue.acceptinput()
    if choice == 1{
        print("Enter the amount to be deposited")
        let amountdeposit = queue.acceptinput()
        amount += amountdeposit
        print("Amount left with bank \(amount)")
        print("Thank You")
        queue.dequeue()
        if !queue.isEmpty(){
        print("People in queue - ")
        queue.showdata()
        }
        if !queue1.isEmpty(){
            print("People in waiting queue")
            queue1.showdata()
            print("Person from waiting queue- Enter the amount to be withdraw")
            let amountwithdraw = queue1.acceptinput()
            if amountwithdraw > amount{
                print("No cash wait in queue")
            }else{
                amount -= amountwithdraw
                print("Amount left with bank \(amount)")
                print("Take your cash")
                queue1.dequeue()
                if !queue.isEmpty(){
                print("People in queue - ")
                queue.showdata()
                }
                if !queue1.isEmpty(){
                print("People left in waiting queue")
                queue1.showdata()
            }
            }
        }
        }

    else if amount != 0{
         var i = 1
        print("Enter the amount to be withdraw")
        let amountwithdraw = queue.acceptinput()
        if amountwithdraw > amount{
            print("No cash wait in queue")
            queue1.enqueue(data: i)
            i += 1
            queue.dequeue()
            if !queue.isEmpty(){
            print("people in queue")
            queue.showdata()
            }
            if !queue1.isEmpty(){
            print("People in waiting queue")
            queue1.showdata()
    
        }
        }
    
        else{
            amount -= amountwithdraw
            print("Amount left with bank \(amount)")
            print("Take your cash")
            queue.dequeue()
            if !queue.isEmpty(){
            print("People left")
            queue.showdata()
        }
            if !queue1.isEmpty(){
               print("People in waiting queue")
                queue1.showdata()
                print("Person from waiting queue- Enter the amount to be withdraw")
                let amountwithdraw = queue1.acceptinput()
                if amountwithdraw > amount{
                    print("No cash wait in queue")
                }else{
                    amount -= amountwithdraw
                    print("Amount left with bank \(amount)")
                    print("Take your cash")
                    queue1.dequeue()
                    if !queue.isEmpty(){
                        print("People in queue - ")
                        queue.showdata()
                    }
                    if !queue1.isEmpty(){
                        print("People left in waiting queue")
                        queue1.showdata()
                    }
                }
                
            }
        }
    }
    else{
        print("No amount left")
        queue.dequeue()
        if !queue.isEmpty(){
        print("People left")
        queue.showdata()
            if !queue1.isEmpty(){
                print("People in waiting queue")
                queue1.showdata()
                print("Person from waiting queue- Enter the amount to be withdraw")
                let amountwithdraw = queue1.acceptinput()
                if amountwithdraw > amount{
                    print("No cash wait in queue")
                    if !queue.isEmpty(){
                        print("People in queue - ")
                        queue.showdata()
                    }
                    if !queue1.isEmpty(){
                        print("People left in waiting queue")
                        queue1.showdata()
                    }
                    
                }else{
                    amount -= amountwithdraw
                    print("Amount left with bank \(amount)")
                    print("Take your cash")
                    queue1.dequeue()
                    if !queue.isEmpty(){
                        print("People in queue - ")
                        queue.showdata()
                    }
                    if !queue1.isEmpty(){
                        print("People left in waiting queue")
                        queue1.showdata()
                    }
                }
            }
    }
}
}

