/******************************************************************************
 *  Purpose: Creation of an Unordered Linked List.
 *
 *  @author Rohini
 *  @version 4.0
 *  @since   22-03-2018
 *
 ******************************************************************************/

import Foundation
let array: NSArray = []
var list = LinkedList<String>()

let path = "/Users/bridgelabz/Documents/Swift-DataStructures/LinkedList/UnOrderedList/File.txt"


do {

    let contents = try NSString(contentsOfFile: path,
                                encoding: String.Encoding.ascii.rawValue)

    contents.enumerateLines({ (line, stop) -> () in
        list.insert(value: line)

    })
}

list.show()
print("Enter the element to be searched")
var search = list.acceptinput()
var result = list.search(value: search)
if result == true {
    print("Element found")
    list.remove(value: search)
    print("So after deleting element in list your new list is - ")
}
else{
    print("Element not found")
    list.insert(value: search)
    print("So after adding element in list your new list is - ")
    }

list.show()
let string = list.getstring(list: list)
do {
    try string.write(toFile: path, atomically: false, encoding: String.Encoding.utf8)
}
catch {
    print("ERROR")
    
}




