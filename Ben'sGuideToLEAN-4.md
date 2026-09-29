Some Questions to Answer:

Q: What is LEAN?
Q: What is the general structure of a LEAN program?
Q: What commands exist in lean?





-- Is the notation for single line comments

/--
This 
is 
the 
notation 
for 
multi-line 
comments
-\

#eval -- Evaluates a function (Ex. 1 + 1 = 2)
#print -- Gives the instantiation of the object.
#check -- Returns the data type

Define Function:

def name : Type := expression
  ^ Works with expressions as well:
\

For example:
define name (variableName : Data Type) is defined as(:=) Function(ex. x * X).
def square (x : Nat) : Nat := x * x
#eval square 5

Would return 25.