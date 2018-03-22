
//
//  Logiv.swift
//  Gambler
//
//  Created by BridgeLabz on 22/03/18.
//  Copyright © 2018 BridgeLabz. All rights reserved.
//

import Foundation
class Gambler{
    func acceptinput()->Int{
        if let input = readLine(){
            if let value = Int(input){
                return value
            }
            else{
                print("Entered value is not a integer type")
            }
        }
        return 0
    }
    func gamblerlogic(strake : Int,goal : Int,trials : Int){
        var bets = 0,wins = 0,loss = 0
        for _ in 0..<trials{
            var cash = strake
            while cash > 0 && cash < goal{
                bets += 1
                if drand48() < 0.5{
                    cash += 1
                }
                else{
                    cash -= 1
                }
            }
                if cash == goal{
                    wins += 1
                }
                loss = trials - wins
            }
        print("Number of wins \(wins)")
        print("Number of loss \(loss)")
        
        let won = Double((wins * 100) / trials)
        let los = Double((loss * 100) / trials)
        
        print("Percentage of wins- \(won) Percentage of loss - \(los)")
        }
    
}
