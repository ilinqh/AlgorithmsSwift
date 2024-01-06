//
//  _2807InsertGreatestCommonDivisorsInLinkedList.swift
//  AlgorithmsSwift
//
//  Created by lin on 2024/1/6.
//

import Foundation

class _2807InsertGreatestCommonDivisorsInLinkedList {
    class Solution {
        func insertGreatestCommonDivisors(_ head: ListNode?) -> ListNode? {
            var node = head
            while node?.next != nil {
                node?.next = ListNode(gcd(node!.val, node!.next!.val), node?.next)
                node = node?.next?.next
            }
            return head
        }
        
        private func gcd(_ num1: Int, _ num2: Int) -> Int {
            var a = num1
            var b = num2
            while b != 0 {
                let temp = a % b
                a = b
                b = temp
            }
            return a
        }
    }
}
