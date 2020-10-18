---
layout: "post"
title: "Leetcode 19: Remove Nth Node From End of List"
date: "2020-10-18"
tags:
  - Leetcode
---

# Question
Given a linked list, remove the n-th node from the end of list and return its head.

Example:
```
Given linked list: 1->2->3->4->5, and n = 2.

After removing the second node from the end, the linked list becomes 1->2->3->5.
```

Note:

Given n will always be valid.

Follow up:

Could you do this in one pass?

# Solution
```python
# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution:
    def removeNthFromEnd(self, head, n):
        """
        :type head: ListNode
        :type n: int
        :rtype: ListNode
        """
        l = head
        r = head
        for i in range(n):
            r = r.next
        if r == None:
            return head.next
        while r.next != None:
            l = l.next
            r = r.next
        l.next = l.next.next # key idea here is to think None as a valid next state
        return head

```
