---
layout: post
title: 'Leetcode 200: Number of Islands'
date: '2020-09-28 22:53'
tags:
  - Leetcode
  - Medium
  - DFS
  - Review
---

# Question
Given a 2d grid map of '1's (land) and '0's (water), count the number of islands. An island is surrounded by water and is formed by connecting adjacent lands horizontally or vertically. You may assume all four edges of the grid are all surrounded by water.

Example 1:

```
Input:
11110
11010
11000
00000

Output: 1
```

Example 2:
```
Input:
11000
11000
00100
00011

Output: 3
```

# Solution
Use Disjoint Set Union.

```python
class Solution(object):
    def numIslands(self, grid):
        """
        :type grid: List[List[str]]
        :rtype: int
        """
        r = len(grid)
        if r == 0: return 0
        c = len(grid[0])
        
        ans = 0
        for y in xrange(r): # xrange only valid in python 2
            for x in xrange(c):
                if grid[y][x] == '1':
                    ans += 1
                    self.__dfs(grid, x, y, c, r)
        return ans
    
    def __dfs(self, grid, x, y, c, r):
        if x < 0 or y < 0 or x >=c or y >= r or grid[y][x] == '0':
            return
        grid[y][x] = '0'
        self.__dfs(grid, x + 1, y, n, m)
        self.__dfs(grid, x - 1, y, n, m)
        self.__dfs(grid, x, y + 1, n, m)
        self.__dfs(grid, x, y - 1, n, m)
```
