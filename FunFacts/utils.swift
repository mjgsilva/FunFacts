//
//  utils.swift
//  FunFacts
//
//  Created by Mário Silva on 27/11/14.
//  Copyright (c) 2014 Mário Silva. All rights reserved.
//

import Foundation

/* Generates a random number. This function guarantees that the new generated number is not equal to the last generated number to avoid getting the same fact. */
func generateNumber(length: UInt32, lastGeneratedNumber: Int) -> Int {
    var unsignedRandomNumber = arc4random_uniform(length)
    var randomNumber = Int(unsignedRandomNumber)
    
    if(randomNumber == lastGeneratedNumber) {
        return generateNumber(length,lastGeneratedNumber)
    } else {
        return randomNumber
    }
}