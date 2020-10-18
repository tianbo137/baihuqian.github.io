
---
layout: "post"
title: "Leetcode 1627: Graph Connectivity With Threshold"
date: "2020-10-18"
tags: Leetcode
---

# Question
We have n cities labeled from 1 to n. Two different cities with labels x and y are directly connected by a bidirectional road if and only if x and y share a common divisor strictly greater than some threshold. More formally, cities with labels x and y have a road between them if there exists an integer z such that all of the following are true:
* x%z == 0
* y%z == 0
* z > threshold

Given the two integers, n and threshold, and an array of queries, you must determine for each queries[i] = [ai, bi] if cities ai and bi are connected (i.e. there is some path between them).

Return an array answer, where answer.length == queries.length and answer[i] is true if for the ith query, there is a path between ai and bi, or answer[i] is false if there is no path.


# Solution

```python
class Solution:
    def myAtoi(self, str):
        """
        :type str: str
        :rtype: int
        """
        str = str.lstrip(' ')
        if str is None or len(str) == 0:
            return 0

        sign = 1
        res = 0
        if str[0] == '+':
            sign = 1
            str = str[1:]
        elif str[0] == '-':
            sign = -1
            str = str[1:]
        if len(str) == 0 or not str[0].isdigit():
            return 0

        for s in str:
            if s.isdigit():
                res = res * 10 + int(s)
            else:
                break

        res *= sign

        if res < -1 * 2 ** 31:
            return -1 * 2 ** 31
        elif res > 2 ** 31 - 1:
            return 2 ** 31 - 1
        else:
            return res
```
