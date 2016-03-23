//
//  GeneratePassword.swift
//  RandomPassword
//
//  Created by Sebastian on 3/22/16.
//  Copyright © 2016 Sebastian. All rights reserved.
//

import Foundation

private let characters = Array(("0123456789abcdefghijklmnopqrstuvwxyz" +
    "ABCDEFGHIJKLMNOPQRSTUVWXYZ").characters)

func generateRandomString(lenght: Int) -> String {
    
    var string = ""
    
    for _ in 0..<lenght {
        string.append(generateRandomCharacter())
    }
    
    return string
}

func generateRandomCharacter() -> Character {
    let index = Int(arc4random_uniform(UInt32(characters.count)))
    
    let character = characters[index]
    
    return character
}