//
//  _162FindPeakElement.swift
//  AlgorithmsSwift
//
//  Created by lin on 2023/12/18.
//

import Foundation

class _162FindPeakElement {
    
    class Solution {
        func findPeakElement(_ nums: Array<Int>) -> Int {
            let length = nums.count
            var left = 0
            var right = length - 1
            var ans = -1
            while left <= right {
                let middle = left + ((right - left) >> 1)
                if compare(nums, middle, middle - 1) > 0 && compare(nums, middle, middle + 1) > 0 {
                    ans = middle
                    break
                }
                if (compare(nums, middle, middle + 1) < 0) {
                    left = middle + 1
                } else {
                    right = middle - 1
                }
            }
            return ans
        }
        
        private func get(_ nums: Array<Int>, _ idx: Int) -> Array<Int> {
            if idx == -1 || idx == nums.count {
                return [0, 0]
            }
            return [1, nums[idx]]
        }
        
        private func compare(_ nums: Array<Int>, _ idx1: Int, _ idx2: Int) -> Int {
            let num1 = get(nums, idx1)
            let num2 = get(nums, idx2)
            if num1[0] != num2[0] {
                if num1[0] > num2[0] {
                    return 1
                } else {
                    return -1
                }
            }
            if num1[1] == num2[1] {
                return 0
            } else if num1[1] > num2[1] {
                return 1
            } else {
                return -1
            }
        }
    }
    
}
