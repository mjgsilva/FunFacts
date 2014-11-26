//
//  FactBook.swift
//  FunFacts
//
//  Created by Mário Silva on 26/11/14.
//  Copyright (c) 2014 Mário Silva. All rights reserved.
//

import Foundation

class FactBook {
    let factsArray = [
        "A snail can sleep for three years.",
        "Beavers can swim half a mile underwater on one gulp of air.",
        "Camels have three eyelids to protect themselves from blowing sand!",
        "Donkeys are commonly used by the Iraqi Military to launch rockets!",
        "Porcupines float in water!",
        "The heart of a mouse beats 650 times per minute!"
    ]
    var lastGeneratedNumber = -1

    /* Generates a random number. This function guarantees that the new generated number is not equal to the last generated number to avoid getting the same fact. */
    func generateNumber() -> Int {
        var unsignedArrayCount = UInt32(factsArray.count)
        var unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        var randomNumber = Int(unsignedRandomNumber)
        
        if(randomNumber == lastGeneratedNumber) {
            return generateNumber()
        } else {
            lastGeneratedNumber = randomNumber
            return randomNumber
        }
    }
    
    func randomFact() -> String {
        return factsArray[generateNumber()]
    }
}