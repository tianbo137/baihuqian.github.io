---
layout: "post"
title: "Leetcode 226: Invert Binary Tree"
date: "2020-10-18"
tags: Leetcode
---

# Question

Invert a binary tree.
```
     4
   /   \
  2     7
 / \   / \
1   3 6   9
```

to

```
     4
   /   \
  7     2
 / \   / \
9   6 3   1
```
# Idea
* Base case is when the node is None and we simply return the node;
* Eventually we will return root as it will be the root of the inverted tree;
* The left subtree of root node is given by root.left = invert(root.right); while the right subtree of root node is given by root.right = invert(root.left);
* In order to perform the exchange at the same time, they need to be put on the same line.
* Time complexity is O(N) where N is the number of nodes and space complexity is between O(logN) and O(N) depends on the shape of the tree.

# Solution

```python
# Definition for a binary tree node.
# class TreeNode(object):
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

class Solution(object):
    def invertTree(self, root):
        """
        :type root: TreeNode
        :rtype: TreeNode
        """
        if not root:
            return
        root.left, root.right = self.invertTree(root.right), self.invertTree(root.left)
        return root
```
