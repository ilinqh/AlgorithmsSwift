//
//  _3LongestSubstringWithoutRepeatingCharacters.swift
//  AlgorithmsSwift
//
//  Created by lin on 2023/12/13.
//

import Foundation

class _3LongestSubstringWithoutRepeatingCharacters {
class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var map: [Character: Int] = [:]
        var start = 0
        var maxCount = 0
        for item in s.enumerated() {
            if (map[item.element] != nil) {
                start = max(start, map[item.element]! + 1)
            }
            maxCount = max(maxCount, item.offset - start + 1)
            map[item.element] = item.offset
        }
        return maxCount
    }
}
}
