//
//  _82RemoveDuplicatesFromSortedListII.swift
//  AlgorithmsSwift
//
//  Created by lin on 2024/1/15.
//

import Foundation

class _82RemoveDuplicatesFromSortedListII {
    class Solution {
        func deleteDuplicates(_ head: ListNode?) -> ListNode? {
            if head?.next == nil {
                return head
            }
            var preHead = ListNode(0)
            preHead.next = head
            var preV: ListNode? = preHead
            var curr = head
            var next = head?.next
            while curr != nil {
                if curr?.val == next?.val {
                    while curr?.val == next?.val {
                        next = next?.next
                    }
                    curr = next
                    preV?.next = curr
                    next = curr?.next
                } else {
                    preV?.next = curr
                    preV = preV?.next
                    curr = curr?.next
                    next = curr?.next
                }
            }
            return preHead.next
        }
    }
}
