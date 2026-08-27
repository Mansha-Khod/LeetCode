class Solution(object):
    def isPalindrome(self, x):
        rev_x=str(x)[::-1]
        if rev_x==str(x):
            return True
        else:
            return False
        