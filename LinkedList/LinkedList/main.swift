//
//  main.swift
//  LinkedList
//
//  Created by BridgeLabz on 22/03/18.
//  Copyright © 2018 BridgeLabz. All rights reserved.
//

import Foundation
//var list = LinkedList()
//list.append(value: 50)
//list.append(value: 90)
//list.append(value: 40)
//list.show()
var array = [String]()
let path = "/Users/bridgelabz/Documents/Swift-DataStructures/LinkedList/LinkedList/File.txt"


do {
    
    let contents = try NSString(contentsOfFile: path,
                                encoding: String.Encoding.ascii.rawValue)
    print(contents)
    contents.enumerateLines({ (line, stop) -> () in
        array.append(line)
        
//
//        var char = NSMutableCharacterSet.whitespaceAndNewline()
//        char.removeCharacters(in: " ")
//
//        let words = contents.components(separatedBy: " ").filter(array)
//        print(words)
    })
}
//print(array)

