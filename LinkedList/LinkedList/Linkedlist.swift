//
//  Linkedlist.swift
//  LinkedList
//
//  Created by BridgeLabz on 22/03/18.
//  Copyright © 2018 BridgeLabz. All rights reserved.
//
import Foundation
class LinkedList{
    var head:Node
    init(node : Node){
        self.head = node
    }
    func addNode(value: String) {
        let node = Node(value: value)
    var current: Node = self.head
    while current.next != nil {
        current = current.next!
    }
    current.next = node
}

func addNode(withValue value: Int) {
    self.addNode(node: Node(value: value))
}

}
