//
//  _2697LexicographicallySmallestPalindrome.swift
//  AlgorithmsSwift
//
//  Created by lin on 2023/12/13.
//

import Foundation

class _2697LexicographicallySmallestPalindrome {
    class Solution {
        func makeSmallestPalindrome(_ s: String) -> String {
            var left = 0
            var right = s.count - 1
            var array = Array(s)
            while left < right {
                if array[left] != array[right] {
                    array[left] = min(array[left], array[right])
                    array[right] = min(array[left], array[right])
                }
                left += 1
                right -= 1
            }
            return String(array)
        }
    }
}

