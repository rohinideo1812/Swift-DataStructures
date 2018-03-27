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
    var head = Node<T>()

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
        if self.head.value == nil{
            self.head.value = value
        }else{
        var lastNode = self.head
            while lastNode.next != nil{
                lastNode = lastNode.next!
            }
            let newnode = Node<T>()
            newnode.value = value
            lastNode.next = newnode
        }
    }
    func remove(value:T){
        if self.head.value == value{
            self.head = self.head.next!
        }
        if self.head.value != nil{
            var node = self.head
            var previousNode = Node<T>()
            while node.value != value && node.next != nil{
                previousNode = node
                node = node.next!
            }
            if node.value == value{
                if node.next != nil{
                    previousNode.next = node.next
                }else{
                    previousNode.next = nil
                }
            }
        }
    }
    func show(){
        var currentNode : Node! = self.head
        while currentNode != nil && currentNode.value != nil{
            print("\(currentNode.value!)")
            currentNode = currentNode.next
        }
    }
    func search(value : T)->Bool{

        if head.value == value
        {
           return true
        }
        else{
            var lastnode = self.head
            while lastnode.value != value && lastnode.next != nil{
                lastnode = lastnode.next!
            }
            if lastnode.value == value{
                return true
            }
            else{
                return false
            }
         }
    }
    
   func getstring(list:LinkedList)->String{
        var string = ""
        var lastnode = self.head
        while  lastnode.next != nil {
            let stringVal = String(describing: lastnode.value!)
            string += stringVal
            string += "\n"
            lastnode = lastnode.next!
        }
        string += String(describing: lastnode.value!)
    return string
}
}
