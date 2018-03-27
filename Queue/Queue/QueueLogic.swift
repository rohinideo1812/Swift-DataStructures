/******************************************************************************
 *  Purpose: Functions of Queue.
 *
 *  @author Rohini
 *  @version 4.0
 *  @since   22-03-2018
 *
 ******************************************************************************/

import Foundation
public class Queue{
    var queue=Array(repeatElement(0, count: 5))
    var front = 0
    var rear = 0
    var size = 0
    func acceptinput()->Int{
        if let input = readLine(){
            if let value = Int (input){
                return value
            }
            else{
                print("Entered value is not a integer")
            }
        }
        return 0
    }
    func  enqueue(data : Int){
        if !isFull(){
            queue[rear] = data
            rear = (rear + 1) % 5
            size += 1
        }
    }
    func isFull()->Bool{
        return rear == queue.count
    }
    func isEmpty()->Bool{
        return size == 0
    }
    

    func dequeue(){
        var data = 0
         data = queue[front]
        if !isEmpty(){
           front = (front + 1) % 5
            size -= 1
        }
    
    }
    func showdata(){
   
        for _  in 0..<size{
            print("  o  ")
            print(" /|\\  ")
            print(" / \\")
           
        }
        func enqueuepriority(){
            let i = 0
            let j = 1
            queue[i] = j
            rear = (rear + 1) % 5
            size += 1
            }
        }
        }



