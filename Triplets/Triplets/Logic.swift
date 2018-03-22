//
//  Logic.swift
//  Triplets
//
//  Created by BridgeLabz on 22/03/18.
//  Copyright © 2018 BridgeLabz. All rights reserved.
//

import Foundation
class Triplets{
    func acceptinput()->Int{
        if let input = readLine(){
            if let value = Int (input){
                return value
            }
            else{
                print("Error")
            }
        }
        return 0
    }
    
    func triplets(array : [Int],length : Int){
        var triplets = 0
        var nontriplets = 0
        for i in 0..<length - 2{
            for j in (i + 1)..<length - 1{
                for k in (j + 1)..<length{
                    let result = array[i] + array[j] + array[k]
                    if result == 0{
                        print("Triplets are \(array[i]) \(array[j]) \(array[k])")
                        triplets += 1
                    }
                    else{
       
                        nontriplets += 1
                    }
                }
            }
        }
        print("Number of triplets are \(triplets)")
        print("Number of non triplets are \(nontriplets)")
    }
}

