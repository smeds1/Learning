def num_buses(n):
    """ (int) -> int

    Precondition: n >= 0

    Return the minimum number of buses required to transport n people.
    Each bus can hold 50 people.

    >>> num_buses(0)
    0
    >>> num_buses(1)
    1
    >>> num_buses(50)
    1
    >>> num_buses(51)
    2
    >>> num_buses(75)
    2
    >>> num_buses(180)
    4
    """
    return n//50 if n%50==0 else n//50 + 1


def stock_price_summary(price_changes):
    """ (list of number) -> (number, number) tuple

    price_changes contains a list of stock price changes. Return a 2-item
    tuple where the first item is the sum of the gains in price_changes and
    the second is the sum of the losses in price_changes.

    >>> stock_price_summary([])
    (0, 0)
    >>> stock_price_summary([0.02])
    (0.02, 0)
    >>> stock_price_summary([-0.02])
    (0, -0.02)
    >>> stock_price_summary([-0.05,0.04])
    (0.04, -0.05)
    >>> stock_price_summary([0.01, 0.03, -0.02, -0.14, 0, 0, 0.10, -0.01])
    (0.14, -0.17)
    """
    return (sum([n for n in price_changes if n>0]), sum([n for n in price_changes if n<0]))
    

def swap_k(L, k):
    """ (list, int) -> NoneType

    Precondtion: 0 <= k <= len(L) // 2

    Swap the first k items of L with the last k items of L.

    >>> nums = []
    >>> swap_k(nums, 0)
    >>> nums
    []
    >>> nums = [1]
    >>> swap_k(nums, 0)
    >>> nums
    [1]
    >>> nums = [1,2]
    >>> swap_k(nums, 0)
    >>> nums
    [1, 2]
    >>> nums = [1,2]
    >>> swap_k(nums, 1)
    >>> nums
    [2, 1]
    >>> nums = [1,2,3]
    >>> swap_k(nums, 0)
    >>> nums
    [1, 2, 3]
    >>> nums = [1,2,3]
    >>> swap_k(nums, 1)
    >>> nums
    [3, 2, 1]
    >>> nums = [1, 2, 3, 4, 5, 6]
    >>> swap_k(nums, 2)
    >>> nums
    [5, 6, 3, 4, 1, 2]
    """
    j = len(L) - k
    for i in range(k):
        L[i], L[j] = L[j], L[i]
        j += 1


if __name__ == '__main__':
    import doctest
    doctest.testmod()
