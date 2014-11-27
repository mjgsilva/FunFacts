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
        "The heart of a mouse beats 650 times per minute!",
        "Turtles can live for more than 100 years.",
        "Under extreme stress, some octopuses will eat their own arms.",
        "The male platypus has poisonous spurs on its legs.",
        "Male kangaroos flex their biceps to impress females.",
        "Sharks have been around longer than trees.",
        "Whales and dolphins can't taste anything other than salt."
    ]
    var lastGeneratedNumber = -1
    
    func randomFact() -> String {
        lastGeneratedNumber = generateNumber(UInt32(factsArray.count), lastGeneratedNumber)
        return factsArray[lastGeneratedNumber]
    }
}