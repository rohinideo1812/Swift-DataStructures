//
//  main.swift
//  BalancedParanthesis
//
//  Created by BridgeLabz on 22/03/18.
//  Copyright © 2018 BridgeLabz. All rights reserved.
//

import Foundation
var stack = stacks1()
print("Enter the expression")
var expression = stack.acceptinputstring()
let characters = Array(expression)
for i in 0..<characters.count{
    if characters[i] == "(" || characters[i] == "{" || characters[i] == "["{
        stack.push(data: "\(characters[i])")
    }
    else if characters[i] == ")" {
        
        stack.pop()
    }
    else  if characters[i] == "}" {
        
        stack.pop()
    }
    else if characters[i] == "]" {
        stack.pop()
    }
    
}

if stack.isEmpty()==true{
    print("Balanced String")
}
else{
    print("Not a balanced String")
}





