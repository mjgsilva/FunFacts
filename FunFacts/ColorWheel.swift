//
//  ColorWheel.swift
//  FunFacts
//
//  Created by Mário Silva on 26/11/14.
//  Copyright (c) 2014 Mário Silva. All rights reserved.
//

import Foundation
import UIKit

class ColorWheel {
    let colorsArray = [
        UIColor(red: 230/255.0, green: 126/255.0, blue: 34/255.0, alpha: 1.0), /*Carrot*/
        UIColor(red: 52/255.0, green: 73/255.0, blue: 94/255.0, alpha: 1.0), /*Wet Asphalt*/
        UIColor(red: 127/255.0, green: 140/255.0, blue: 141/255.0, alpha: 1.0), /*Asbestos*/
        UIColor(red: 41/255.0, green: 128/255.0, blue: 185/255.0, alpha: 1.0), /*Belize Hole*/
        UIColor(red: 26/255.0, green: 188/255.0, blue: 156/255.0, alpha: 1.0), /*Turquoise*/
        UIColor(red: 231/255.0, green: 76/255.0, blue: 60/255.0, alpha: 1.0), /*Alizarin*/
        UIColor(red: 241/255.0, green: 196/255.0, blue: 15/255.0, alpha: 1.0), /*Sun Flower*/
    ]
    var lastGeneratedNumber = -1
        
    func randomColor() -> UIColor {
        lastGeneratedNumber = generateNumber(UInt32(colorsArray.count), lastGeneratedNumber)
        return colorsArray[lastGeneratedNumber]
    }
}