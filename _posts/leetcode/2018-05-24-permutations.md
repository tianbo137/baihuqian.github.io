---
layout: post
title: "Leetcode 46: Permutations"
date: '2020-10-18'
tags:
  - Leetcode
---

# Question
Given a collection of distinct integers, return all possible permutations.

Example:
```
Input: [1,2,3]
Output:
[
  [1,2,3],
  [1,3,2],
  [2,1,3],
  [2,3,1],
  [3,1,2],
  [3,2,1]
]
```

# Solution
```python
class Solution:
    def permute(self, nums):
        """
        :type nums: List[int]
        :rtype: List[List[int]]
        """
        if len(nums) < 2:
            return [nums]
        result = []
        for perm in self.permute(nums[:-1]):
            result += [perm[:i] + [nums[-1]] + perm[i:] for i in range(len(perm) + 1)]
        return result  

```
