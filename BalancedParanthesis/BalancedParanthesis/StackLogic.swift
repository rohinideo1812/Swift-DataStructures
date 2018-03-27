/******************************************************************************
 *  Purpose: Stack functions.
 *
 *  @author Rohini
 *  @version 4.0
 *  @since   22-03-2018
 *
 ******************************************************************************/


import Foundation
public class Stacks1{
    var stack=Array(repeatElement("", count: 5))
    var top = 0
    func push(data : String){
        
        if top == stack.count{
            print("Stack Overflow")
            
        }
        else{
            stack[top] = data
            top += 1
        }
    }
    func pop(){
        if isEmpty(){
            print("Stack underflow")
        }
        else{
            var data = ""
            top -= 1
            data = stack[top]
            stack[top] = ""
            
        }
    }
    func show()
    {
        for i in stack
        {
            print(i)
        }
    }
    
    func acceptInputString()->String{
        if let input=readLine(){
            if Int(input) != nil{
                print("Entered value is not a string type")
            }
            else{
                return input
            }
        }
        return ""
    }
    func isEmpty()->Bool{
        return top <= 0
    }
}
