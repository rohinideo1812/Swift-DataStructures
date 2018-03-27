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
var list = LinkedList<Int>()
 let path = "/Users/bridgelabz/Documents/Swift-DataStructures/OrderedList/OrderedList/File.txt"

    do {
      
        let content = try String(contentsOfFile:path, encoding: String.Encoding.utf8)
        let scanner = Scanner(string: content)
        var value = 0
        while scanner.scanInt(&value) {
            list.insert(value: value)
        }
        
    } catch _ as NSError {
        print("nill")
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







