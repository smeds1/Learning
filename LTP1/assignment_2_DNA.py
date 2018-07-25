#Sam Smedinghoff
#6/22/18
#LTP1 - Assignment 2 - DNA

def get_length(dna):
    """ (str) -> int

    Return the length of the DNA sequence dna.

    >>> get_length('ATCGAT')
    6
    >>> get_length('ATCG')
    4
    """
    return len(dna)


def is_longer(dna1, dna2):
    """ (str, str) -> bool

    Return True if and only if DNA sequence dna1 is longer than DNA sequence
    dna2.

    >>> is_longer('ATCG', 'AT')
    True
    >>> is_longer('ATCG', 'ATCGGA')
    False
    """

    return get_length(dna1) > get_length(dna2)


def count_nucleotides(dna, nucleotide):
    """ (str, str) -> int

    Return the number of occurrences of nucleotide in the DNA sequence dna.

    >>> count_nucleotides('ATCGGC', 'G')
    2
    >>> count_nucleotides('ATCTA', 'G')
    0
    """

    return dna.count(nucleotide)

def contains_sequence(dna1, dna2):
    """ (str, str) -> bool

    Return True if and only if DNA sequence dna2 occurs in the DNA sequence
    dna1.

    >>> contains_sequence('ATCGGC', 'GG')
    True
    >>> contains_sequence('ATCGGC', 'GT')
    False

    """

    return dna2 in dna1


def is_valid_sequence(dna):
    """ (str) -> bool

    Return True if str is a valid dna sequence and False otherwise.

    >>>is_valid_sequence('ACTGCTAGGAT')
    True
    >>>is_valid_sequence('ACTAGgTAC')
    False
    >>>is_valid_sequence('ACTGHTGTT')
    False

    """
    
    for ch in dna:
        if not ch in 'ACGT':
            return False
    return True

def insert_sequence(s1, s2, idx):
    """ (str, str, int) -> str

    Return a string with s2 inserted into s1 at index idx.

    >>>insert_sequence('CCGG','AT',2)
    CCATGG
    >>>insert_sequence('CCGG','AT',0)
    ATCCGG
    >>>insert_sequence('CCGG','AT',4)
    CCGGAT

    """

    return s1[:idx] + s2 + s1[idx:]


def get_complement(n):
    """ (str) -> str

    Returns the complement of nucleotide n.

    >>>get_complement('A')
    T
    >>>get_complement('T')
    A
    >>>get_complement('C')
    G
    >>>get_complement('G')
    C

    """
    if n == 'A':
        return 'T'
    elif n == 'T':
        return 'A'
    elif n == 'C':
        return 'G'
    else:
        return 'C'

def get_complementary_sequence(dna):
    """ (str) -> str

    Returns the complementary dna sequence of string dna.

    >>>get_complementary_sequence('AT')
    TA
    >>>get_complementary_sequence('CGATTGC')
    GCTAACG

    """

    complement = ''
    for ch in dna:
        complement = complement + get_complement(ch)
    return complement
