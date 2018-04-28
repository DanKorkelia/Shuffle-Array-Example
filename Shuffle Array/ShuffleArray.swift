//
//  ShuffleArray.swift
//  Shuffle Array
//
//  Created by Dan Korkelia on 04/01/2018.
//  Copyright © 2018 Ramdan Korkelia. All rights reserved.
//

import Foundation

//Usage add .shuffleArray() to the end of an array variable to change it's order.

var myTestArrayOfNumbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

func myTestFunction() -> String {

    return "\(myTestArrayOfNumbers.shuffleArray())"
}

extension MutableCollection {
    
    mutating func shuffleArray() {
        
        let CountOfArray = count
        
        guard CountOfArray > 1
            else { return }
        
        for (firstUnshuffled, unshuffledCount) in zip(indices, stride(from: CountOfArray, to: 1, by: -1)) {
            let step: Int = numericCast(arc4random_uniform(numericCast(unshuffledCount)))
            let specifiedIndex = index(firstUnshuffled, offsetBy: step)
            swapAt(firstUnshuffled, specifiedIndex)
        }
    }
}
