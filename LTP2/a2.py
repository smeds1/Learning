#Sam Smedinghoff
#7/25/18
#Learn to Program 2 - Week 5 - Assignment 2

# Do not import any modules. If you do, the tester may reject your submission.

# Constants for the contents of the maze.

# The visual representation of a wall.
WALL = '#'

# The visual representation of a hallway.
HALL = '.'

# The visual representation of a brussels sprout.
SPROUT = '@'

# Constants for the directions. Use these to make Rats move.

# The left direction.
LEFT = -1

# The right direction.
RIGHT = 1

# No change in direction.
NO_CHANGE = 0

# The up direction.
UP = -1

# The down direction.
DOWN = 1

# The letters for rat_1 and rat_2 in the maze.
RAT_1_CHAR = 'J'
RAT_2_CHAR = 'P'


class Rat:
    """ A rat caught in a maze. """

    def __init__(self, symbol, row, col):
        """
        (Rat, str, int, int) -> NoneType

        Creates a rat with a given symbol and puts it in a row/col.
        Starts the rat with zero brusselsprouts eaten.

        >>> paul = Rat('P',1,4)
        >>> paul.symbol
        'P'
        >>> paul.row
        1
        >>> paul.col
        4
        >>> paul.num_sprouts_eaten
        0
        """
        
        self.symbol = symbol
        self.row = row
        self.col = col
        self.num_sprouts_eaten = 0

    def set_location(self,row,col):
        """
        (Rat,int,int) -> NoneType

        Moves a rat to a given row/col location.

        >>> paul = Rat('P',1,4)
        >>> paul.set_location(3,5)
        >>> paul.row
        3
        >>> paul.col
        5
        """
        
        self.row = row
        self.col = col

    def eat_sprout(self):
        """
        (Rat) -> NoneType

        Updates the rat's sprout total by 1

        >>> paul = Rat('P',1,4)
        >>> paul.eat_sprout()
        >>> paul.num_sprouts_eaten
        1
        >>> paul.eat_sprout()
        >>> paul.num_sprouts_eaten
        2
        """
        
        self.num_sprouts_eaten += 1

    def __str__(self):
        """
        (Rat) -> str

        Returns a string representation of a rat.

        >>> paul = Rat('P',1,4)
        >>> print(paul)
        P at (1, 4) ate 0 sprouts.
        """

        return '{0} at ({1}, {2}) ate {3} sprouts.'.format(self.symbol,
                self.row, self.col, self.num_sprouts_eaten)

class Maze:
    """ A 2D maze. """

    def __init__(self,mazemap,rat1,rat2):
        """
        (Maze, list of list of str, Rat, Rat) -> NoneType

        Creates a maze board with two rats.

        >>> maze = []
        >>> maze.append(['#', '#', '#', '#', '#', '#', '#'])
        >>> maze.append(['#', '.', '.', '.', '.', '.', '#'])
        >>> maze.append(['#', '.', '#', '#', '#', '.', '#'])
        >>> maze.append(['#', '.', '.', '@', '#', '.', '#'])
        >>> maze.append(['#', '@', '#', '.', '@', '.', '#'])
        >>> maze.append(['#', '#', '#', '#', '#', '#', '#'])
        >>> m = Maze(maze, Rat('J', 1, 1), Rat('P', 1, 4))
        >>> m.num_sprouts_left
        3
        """

        self.maze = mazemap
        self.rat_1 = rat1
        self.rat_2 = rat2
        self.num_sprouts_left = 0

        for row in self.maze:
            self.num_sprouts_left += row.count('@')

    def is_wall(self,row,col):
        """
        (Maze, int, int) -> bool

        Retruns True if a specified square is a well and False otherwise
        
        >>> maze = []
        >>> maze.append(['#', '#', '#', '#', '#', '#', '#'])
        >>> maze.append(['#', '.', '.', '.', '.', '.', '#'])
        >>> maze.append(['#', '.', '#', '#', '#', '.', '#'])
        >>> maze.append(['#', '.', '.', '@', '#', '.', '#'])
        >>> maze.append(['#', '@', '#', '.', '@', '.', '#'])
        >>> maze.append(['#', '#', '#', '#', '#', '#', '#'])
        >>> m = Maze(maze, Rat('J', 1, 1), Rat('P', 1, 4))
        >>> m.is_wall(0,0)
        True
        >>> m.is_wall(1,2)
        False
        """
        return self.maze[row][col] == WALL

    def get_character(self,row,col):
        """
        (Maze, int, int) -> str

        Returns the contents of the maze at the specified row & col.

        >>> maze = []
        >>> maze.append(['#', '#', '#', '#', '#', '#', '#'])
        >>> maze.append(['#', '.', '.', '.', '.', '.', '#'])
        >>> maze.append(['#', '.', '#', '#', '#', '.', '#'])
        >>> maze.append(['#', '.', '.', '@', '#', '.', '#'])
        >>> maze.append(['#', '@', '#', '.', '@', '.', '#'])
        >>> maze.append(['#', '#', '#', '#', '#', '#', '#'])
        >>> m = Maze(maze, Rat('J', 1, 1), Rat('P', 1, 4))
        >>> m.get_character(0,0)
        '#'
        >>> m.get_character(1,2)
        '.'
        >>> m.get_character(1,1)
        'J'
        >>> m.get_character(3,3)
        '@'
        >>> m.get_character(1,4)
        'P'
        """

        if self.rat_1.row == row and self.rat_1.col == col: 
            return self.rat_1.symbol
        elif self.rat_2.row == row and self.rat_2.col == col:
            return self.rat_2.symbol
        else:
            return self.maze[row][col]

    def move(self,rat,vert,horz):
        """
        (Maze, Rat, int, int) -> bool

        If there is no wall, move the rat in the direction specified by
        vert and horiz. Eat a brussel sprout if necessary. Return True if
        the rat was able to move and False otherwise.

        >>> maze = []
        >>> maze.append(['#', '#', '#', '#', '#', '#', '#'])
        >>> maze.append(['#', '.', '.', '.', '.', '.', '#'])
        >>> maze.append(['#', '.', '#', '#', '#', '.', '#'])
        >>> maze.append(['#', '.', '.', '@', '#', '.', '#'])
        >>> maze.append(['#', '@', '#', '.', '@', '.', '#'])
        >>> maze.append(['#', '#', '#', '#', '#', '#', '#'])
        >>> m = Maze(maze, Rat('J', 1, 1), Rat('P', 1, 4))
        >>> m.move(m.rat_1,-1,0)
        False
        >>> m.move(m.rat_1,1,0)
        True
        >>> m.move(m.rat_1,1,0)
        True
        >>> m.move(m.rat_1,1,0)
        True
        >>> m.rat_1.row
        4
        >>> m.num_sprouts_left
        2
        >>> m.rat_1.num_sprouts_eaten
        1
        >>> m.move(m.rat_2,0,1)
        True
        >>> m.rat_2.col
        5
        """

        new_space_char = self.get_character(rat.row + vert, rat.col + horz)
        if new_space_char == '#':
            return False
        else:
            rat.row += vert
            rat.col += horz
            if new_space_char == '@':
                rat.num_sprouts_eaten += 1
                self.num_sprouts_left -= 1
                self.maze[rat.row][rat.col] = '.'
        return True

    def __str__(self):
        """
        (Maze) -> str
        Returns a string representation of the maze

        >>> maze = []
        >>> maze.append(['#', '#', '#', '#', '#', '#', '#'])
        >>> maze.append(['#', '.', '.', '.', '.', '.', '#'])
        >>> maze.append(['#', '.', '#', '#', '#', '.', '#'])
        >>> maze.append(['#', '.', '.', '@', '#', '.', '#'])
        >>> maze.append(['#', '@', '#', '.', '@', '.', '#'])
        >>> maze.append(['#', '#', '#', '#', '#', '#', '#'])
        >>> m = Maze(maze, Rat('J', 1, 1), Rat('P', 1, 4))
        >>> print(m)
        #######
        #J..P.#
        #.###.#
        #..@#.#
        #@#.@.#
        #######
        J at (1, 1) ate 0 sprouts.
        P at (1, 4) ate 0 sprouts.
        """
        board = ''
        for r in range(len(self.maze)):
            for c in range(len(self.maze[r])):
                if self.rat_1.row == r and self.rat_1.col == c:
                    board += self.rat_1.symbol
                elif self.rat_2.row == r and self.rat_2.col == c:
                    board += self.rat_2.symbol
                else:
                    board += self.maze[r][c]
            board += '\n'
        board += str(self.rat_1) + '\n'
        board += str(self.rat_2)
        return board

if __name__ == '__main__':
    import doctest
    doctest.testmod()
