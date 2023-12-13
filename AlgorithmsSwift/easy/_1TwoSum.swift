//
//  _1TwoSum.swift
//  AlgorithmsSwift
//
//  Created by lin on 2023/12/13.
//

import Foundation

class _1TwoSum {
    class Solution {
        func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
            var map: [Int : Int] = [:]
            for i in nums.indices {
                let num = nums[i]
                if map[num] != nil {
                    return [map[num]!, i]
                } else {
                    map[target - num] = i
                }
            }
            return []
        }
    }
}
