//
//  ShuffleArray.swift
//  Shuffle Array
//
//  Created by Dan Korkelia on 04/01/2018.
//  Copyright © 2018 Ramdan Korkelia. All rights reserved.
//

import Foundation


extension MutableCollection {
    mutating func shuffle() {
        let c = count
        guard c > 1 else { return }
        
        for (firstUnshuffled, unshuffledCount) in zip(indices, stride(from: c, to: 1, by: -1)) {
            let d: IndexDistance = numericCast(arc4random_uniform(numericCast(unshuffledCount)))
            let i = index(firstUnshuffled, offsetBy: d)
            swapAt(firstUnshuffled, i)
        }
    }
}
