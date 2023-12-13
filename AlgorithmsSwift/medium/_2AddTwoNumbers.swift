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
}
