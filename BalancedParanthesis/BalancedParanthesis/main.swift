/******************************************************************************
 *  Purpose: Determines the entered expression is balanced or not using Stack.
 *
 *  @author Rohini
 *  @version 4.0
 *  @since   22-03-2018
 *
 ******************************************************************************/


import Foundation
var stack = Stacks1()
print("Enter the expression")
var expression = stack.acceptInputString()
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





