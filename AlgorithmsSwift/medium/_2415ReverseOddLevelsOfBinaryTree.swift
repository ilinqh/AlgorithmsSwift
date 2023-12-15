//
//  _2415ReverseOddLevelsOfBinaryTree.swift
//  AlgorithmsSwift
//
//  Created by lin on 2023/12/15.
//

import Foundation

class _2415ReverseOddLevelsOfBinaryTree {
    class Solution {
        func reverseOddLevels(_ root: TreeNode?) -> TreeNode? {
            if root == nil {
                return root
            }
            var queue: [TreeNode] = []
            queue.append(root!)
            var isOdd = false
            while !queue.isEmpty {
                let size = queue.count
                var array: [TreeNode] = []
                for i in 0 ..< size {
                    let node = queue.removeFirst()
                    if isOdd {
                        array.append(node)
                    }
                    if node.left != nil {
                        queue.append(node.left!)
                        queue.append(node.right!)
                    }
                }
                if isOdd {
                    var left = 0
                    var right = array.count - 1
                    while left < right {
                        let temp = array[left].val
                        array[left].val = array[right].val
                        array[right].val = temp
                        left += 1
                        right -= 1
                    }
                }
                
                isOdd = !isOdd
            }
            return root
        }
    }
}
