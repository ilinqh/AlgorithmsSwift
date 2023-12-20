//
//  _2828CheckIfAStringIsAnAcronymOfWords.swift
//  AlgorithmsSwift
//
//  Created by lin on 2023/12/20.
//

import Foundation

class _2828CheckIfAStringIsAnAcronymOfWords {
    class Solution {
        func isAcronym(_ words: [String], _ s: String) -> Bool {
            if (words.count != s.count) {
                return false
            }
            for i in 0..<s.count {
                if words[i].first != s[s.index(s.startIndex, offsetBy: i)] {
                    return false
                }
            }
            return true
        }
    }
}
