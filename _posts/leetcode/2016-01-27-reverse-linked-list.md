---
layout: "post"
title: "Leetcode 206: Reverse Linked List"
date: "2020-10-17"
tags: Leetcode
---

# Question
Reverse a singly linked list.

# Example 
Input: 1->2->3->4->5->NULL 

Output: 5->4->3->2->1->NULL

# Idea
Double pointer with one pointing at the end of the reverted part and another one pointing to the head the remaining part

# Solution

class Solution(object):
    def reverseList(self, head):
        """
        :type head: ListNode
        :rtype: ListNode
        """
        prev = None
        curr = head

        while curr:
            next = curr.next
            curr.next = prev
            prev = curr
            curr = next
    
        return prev
      
