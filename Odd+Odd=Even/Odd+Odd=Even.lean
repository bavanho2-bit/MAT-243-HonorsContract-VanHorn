/--
This is a proof in lean of the following theroem:

Theorem: "The sum of any two odd integers are even."

Proof:

Suppose A and B are two odd integers.

By the definition of odd integers, A = 2k + 1 and B = 2l + 1, for some integers k and l.

Then, A + B = 2k + 1 + 2l + 1.

Then, 2k + 1 + 2l + 1 = 2k+2l+2.

Then, 2k+2l+2 = 2(k+l+1)

Say some variable k' is equal to k+l+1. It follows that k' is an integer.

2k' is the definition of an even integer.



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


-/
def Even (n : Int) : Prop :=
  ∃ k : Int, n = 2 * k

def Odd (n : Int) : Prop :=
  ∃ k : Int, n = 2 * k + 1

theorem Odd_add_Odd_Even
-- defines an Odd number: ha
    (ha : Odd a)
-- defines an Odd number: hb
    (hb : Odd b)  :
-- Theorem: the sum of two odd integers is even.
    Even (a + b) := by
-- The by statement enters tactic mode and we solve:
-- obtain sets an
    obtain ⟨k, hk⟩ :=  ha
    obtain ⟨j, hj⟩ := hb
    refine ⟨k + j + 1, ?_⟩
    rewrite [hk, hj]
    simp [Int.mul_add, Int.add_assoc, Int.add_comm, Int.add_left_comm]
    simp [<- Int.add_assoc]
