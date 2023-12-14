//
//  _2AddTwoNumbers.swift
//  AlgorithmsSwift
//
//  Created by lin on 2023/12/13.
//

import Foundation

class _2AddTwoNumbers {
    class Solution {
        func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
            if l1 == nil {
                return l2
            }
            if l2 == nil {
                return l1
            }
            
            let head = ListNode()
            var cur = head
            
            var temp1 = l1
            var temp2 = l2
            var plusOne = false
            
            while temp1 != nil || temp2 != nil || plusOne {
                var sum = plusOne ? 1 : 0
                sum += (temp1?.val ?? 0) + (temp2?.val ?? 0)
                plusOne = false
                if (sum > 9) {
                    plusOne = true
                    sum -= 10
                }
                cur.next = ListNode(sum)
                cur = cur.next!
                temp1 = temp1?.next
                temp2 = temp2?.next
            }
            if temp1 != nil {
                cur.next = temp1
            }
            if (temp2 != nil) {
                cur.next = temp2
            }
            return head.next
        }
    }
    
    /**
     * Definition for singly-linked list.
     * public class ListNode {
     *     public var val: Int
     *     public var next: ListNode?
     *     public init() { self.val = 0; self.next = nil; }
     *     public init(_ val: Int) { self.val = val; self.next = nil; }
     *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
     * }
     */
    class BestSolution {
        func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
            var link1 = l1
            var link2 = l2
            let result = ListNode()
            var current = result
            var sum = 0
            while link1 != nil || link2 != nil {
                if let link = link1 {
                    sum += link.val
                    link1 = link.next
                }
                if let link = link2 {
                    sum += link.val
                    link2 = link.next
                }
                current.next = ListNode(sum % 10)
                current = current.next!
                sum /= 10
            }
            if sum > 0 {
                current.next = ListNode(sum)
            }
            return result.next
        }
    }
}
