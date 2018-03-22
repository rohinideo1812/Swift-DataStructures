//
//  StackLogic.swift
//  BalancedParanthesis
//
//  Created by BridgeLabz on 22/03/18.
//  Copyright © 2018 BridgeLabz. All rights reserved.
//

import Foundation
public class stacks1{
    var stack=Array(repeatElement("", count: 5))
    var top = 0
    func push(data : String){
        
        if top == stack.count{
            print("error")
            
        }
        else{
            stack[top] = data
            top += 1
        }
    }
    func pop(){
        if isEmpty(){
            print("ERROR")
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
    
    func acceptinputstring()->String{
        if let input=readLine(){
            if Int(input) != nil{
                print("Error")
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
