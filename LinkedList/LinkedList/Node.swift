//
//  Node.swift
//  LinkedList
//
//  Created by BridgeLabz on 22/03/18.
//  Copyright © 2018 BridgeLabz. All rights reserved.
//

import Foundation
class Node {
    
    let value: Int
    var next: Node?
    
    init(value: Int, next: Node? = nil) {
        self.value = value
        self.next = next
    }
    
}
