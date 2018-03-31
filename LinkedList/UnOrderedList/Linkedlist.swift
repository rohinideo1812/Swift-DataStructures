/******************************************************************************
 *  Purpose: Linked List operations.
 *
 *  @author Rohini
 *  @version 4.0
 *  @since   22-03-2018
 *
 ******************************************************************************/

import Foundation

class LinkedList<T : Comparable>{
    var head:Node<T>?

    func acceptinput()->String{
        if let input = readLine(){
            if Int(input) != nil{
                print("Entered value is not an integer")
            }else{
                return input
            }
        }
        return ""
    }
    

    func insert(value : T){
        
        if self.head == nil{
            self.head  = Node<T>(value: value)
        }else{
            var lastNode = self.head
            while lastNode?.next != nil{
                lastNode = lastNode?.next!
            }
            let newnode = Node<T>(value: value)
            lastNode?.next = newnode
        }
    }
    func remove(value : T){
        if head == nil{
            print("LinkedList is Empty")
            
        }
        else{
            var tempNode = self.head
            var previousNode:Node<T>?
            while tempNode?.next != nil && tempNode?.value != value{
                previousNode = tempNode
                tempNode = tempNode?.next
            }
            if tempNode?.value == value{
                previousNode?.next = tempNode?.next
            }
        }
    }
    func show(){
        if self.head == nil{
            print("Linked List is Empty")
        }else{
            var lastNode = self.head
            while lastNode != nil{
                if let val = lastNode?.value{
                    print(val)
                }
                lastNode = lastNode?.next
            }
            
        }
    }
    func search(value : T)->Bool{
        if self.head == nil{
            print("List is Empty")
        }
        else if head?.value == value
        {
            return true
        }
        else{
            var lastnode = self.head
            while lastnode?.value != value && lastnode?.next != nil{
                lastnode = lastnode?.next
            }
            if lastnode?.value == value{
                return true
            }
        }
        
        return false
        
    }
    func getstring(list : LinkedList)->String{
        var string = ""
        var lastnode = self.head
        while  lastnode != nil {
            if let stringVal = lastnode?.value{
                string += String(describing: stringVal)
                string += "\n"
                lastnode = lastnode?.next
            }
        }
        
        return string
        
    }
}
