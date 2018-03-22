//
//  main.swift
//  Gambler
//
//  Created by BridgeLabz on 22/03/18.
//  Copyright © 2018 BridgeLabz. All rights reserved.
//

import Foundation
var gambler = Gambler()
print("Enter the $Stake")
var strake = gambler.acceptinput()
print("Enter the goal")
var goal = gambler.acceptinput()
print("Enter the trials")
var trials = gambler.acceptinput()
gambler.gamblerlogic(strake: strake, goal: goal, trials: trials)


