//
//  utils.swift
//  FunFacts
//
//  Created by Mário Silva on 27/11/14.
//  Copyright (c) 2014 Mário Silva. All rights reserved.
//

import Foundation

class Utils {
    
    /* Generates a random number. This function guarantees that the new generated number is not equal to the last generated number to avoid getting the same fact. */
    class func generateNumber(length: UInt32, lastGeneratedNumber: Int) -> Int {
        var unsignedRandomNumber = arc4random_uniform(length)
        var randomNumber = Int(unsignedRandomNumber)
        
        if(randomNumber == lastGeneratedNumber) {
            return generateNumber(length,lastGeneratedNumber: lastGeneratedNumber)
        } else {
            return randomNumber
        }
    }
}