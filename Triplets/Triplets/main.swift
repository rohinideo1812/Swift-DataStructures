//
//  main.swift
//  Triplets
//
//  Created by BridgeLabz on 22/03/18.
//  Copyright © 2018 BridgeLabz. All rights reserved.
//

import Foundation
var triplets = Triplets()
var array = [Int]()
print("Enter the length of array")
var length = triplets.acceptinput()
print("Enter the elements in array")
for i in 0..<length{
    array.append(triplets.acceptinput())
}
print(array)
triplets.triplets(array: array, length: length)

