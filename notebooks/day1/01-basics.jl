### A Pluto.jl notebook ###
# v0.20.13

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    #! format: off
    return quote
        local iv = try Base.loaded_modules[Base.PkgId(Base.UUID("6e696c72-6542-2067-7265-42206c756150"), "AbstractPlutoDingetjes")].Bonds.initial_value catch; b -> missing; end
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : iv(el)
        el
    end
    #! format: on
end

# ╔═╡ 9a1cca86-0fff-4f8a-a033-8cf6db337503
using PlutoUI; TableOfContents() 

# ╔═╡ bf1385da-4ac2-11eb-3992-41abac921370
using Plots

# ╔═╡ e97e5984-4ab9-11eb-3efb-9f54c6c307dd
# edit the code below to set your name and UGent username

student = (name = "Michiel Huttener", email = "Michiel.Huttener@UGent.be");

# press the ▶ button in the bottom right of this cell to run your edits
# or use Shift+Enter

# you might need to wait until all other cells in this notebook have completed running. 
# scroll down the page to see what's up

# ╔═╡ f089cbaa-4ab9-11eb-09d1-05f49911487f
md"""
Submission by: **_$(student.name)_**
"""

# ╔═╡ fd21a9fa-4ab9-11eb-05e9-0d0963826b9f
md"""
# Notebook 1: Getting up and running

First of all, welcome to the course, **$(student[:name])**! We hope you enjoy the ride.
""" 

# ╔═╡ e579d5f5-e9fa-4949-9000-7f383abde4f1
md"""
## 0. Welcome to Pluto

We will do our exercises in the Pluto notebook environment. The Pluto notebooks are pure Julia alternatives to the Jupyter notebooks you might have worked with. They are fast and reactive and come equipped with their own package manager, making it easy to distribute them.

Cells are immediately executed in order of their *dependencies*, so not in the order that they appear. This can be confusing at first.

"""

# ╔═╡ 34055ff7-7ab5-4f08-8551-4cb64b8b7931
one = 1  # change me and everything is updated!

# ╔═╡ 0a32ab1d-8a0e-40c0-8372-c0b6c5c9d431
two = one / 2  # I depend on one, so I am executed second

# ╔═╡ 266779f6-8735-429d-b9d8-1782252a4337
three = two + one   # I am executed last

# ╔═╡ 33e0b24e-3bfd-4cda-b1da-7d05c47d9cac
md"To run a cell either press on the ▶ symbol or press `shift + ENTER`."


# ╔═╡ 67bb736c-7c82-4bc3-a9b1-185c72b7a1b6
# Hi there, you are not supposed to see me!

# ╔═╡ 0a45a059-4ccf-436f-94ad-0afb7b8e869b
md"Press on the little 👁️ left of the cell to toggle a hidden cell."

# ╔═╡ 8d12f558-0f45-4380-b083-5dc9ba2239dd
md"You can only have one statement per line and all your variables need to have unique names. You can split statements in two lines or wrap them in a `begin ... end` block."


# ╔═╡ dc10b61c-20b2-4f5c-9c33-964e00fa218f
a1 = 2

# ╔═╡ 4d209dd9-083c-404c-9f9f-3709162b9656
md"Pluto might seem strange at first, though its restrictions make it very flexible and allows to easily create interactivity!"


# ╔═╡ 578d0fad-fb95-4729-9c7d-e4a23fab03c8
md"period $(@bind period Slider(0.0:0.2:5, default=1, show_value=true))"


# ╔═╡ d4982d9f-09f3-4767-89b4-545bd6b3d44a
mycos = t->cos(period * t);


# ╔═╡ 7cfadeed-ac22-4f46-81cd-cf72005e49b3
plot(mycos, 0, 8, xlab="t", title="Cos($period * t)")

# ╔═╡ 23d3c9cc-4abd-11eb-0cb0-21673effee6c
md"""## 1. The basics
*From zero to newbie.*
"""

# ╔═╡ 62c3b076-4ab7-11eb-0cf2-25cdf7d2540d
md"""
Let's get started with the basics. Some mathematical operations, """

# ╔═╡ 7bf5bdbe-4ab7-11eb-0d4b-c116e02cb9d9
1 + 2       # adding integers

# ╔═╡ 83306610-4ab7-11eb-3eb5-55a465e0abb9
1.0 + 2.0   # adding floats

# ╔═╡ 3fa0a15c-5008-11eb-13b5-a91b02c1eb2d
1 + 2.0     # adding a float to an integer...

# ╔═╡ 83311b8a-4ab7-11eb-0067-e57ceabdfe9d
2 / 4       # standard division

# ╔═╡ 833dbc66-4ab7-11eb-216d-f9900f95deb8
div(2, 4)   # Computes 2/4 truncated to an integer

# ╔═╡ 8342c042-4ab7-11eb-2136-497fc9e1b9c4
2 ÷ 4       # looks nicer but does exactly the same!

# ╔═╡ 834d4cbc-4ab7-11eb-1f1a-df05b0c00d66
7 % 3       # get the remainder of the integer division

# ╔═╡ 8360ffac-4ab7-11eb-1162-f7a536eb0765
35 \ 7      # inverse division

# ╔═╡ 8365cb3e-4ab7-11eb-05c0-85f51cc9b018
1 // 3      # fractions, gives the result as a rational

# ╔═╡ 8370eaf0-4ab7-11eb-1cd3-dfeec9341c4b
1//2 + 1//4

# ╔═╡ 50bb93e6-5a6c-11eb-0a6c-d5d749857771
2.0 + 3.0im  # complex numbers

# ╔═╡ 8383f104-4ab7-11eb-38a5-33e59b1591f6
'c'        # characters (unicode)

# ╔═╡ 8387934a-4ab7-11eb-11b2-471b08d87b31
:symbol    # symbols, mostly used for macros

# ╔═╡ 8bab2e50-5a6c-11eb-3c5f-a9f811483814
:ζ         # any LaTeX symbol

# ╔═╡ 9d2708ca-5a6c-11eb-1c0f-473f0e2b5363
:🎉        # or Unicode emoji

# ╔═╡ 8c14cb9a-4ab7-11eb-0666-b1d4aca00f97
md"variable assignment"

# ╔═╡ 93b5a126-4ab7-11eb-2f67-290ed869d44a
x = 2

# ╔═╡ 353efeea-6492-11eb-3d09-353d4dae491a
md"In the Pluto notebook environment you are currently working in, it is not possible to define the same variable in two cells. However, this is not standard Julia behaviour. You can see that redefining a variable is possible,"

# ╔═╡ 92f57780-6492-11eb-1264-bbef04a8ae99
begin
	variable1 = 2.0
	variable1 = 4.0
end;

# ╔═╡ a17ebeba-6492-11eb-07ba-f516a990affc
variable1

# ╔═╡ 3055711a-6493-11eb-252b-7f5d99115551
md"""
```julia
begin
 statement1
 statement2
end
```

Enable to wrap multiple statements, since only single-line statements are allowed in this notebook environment.

"""

# ╔═╡ f474d864-28b9-4299-b207-dca426554c46
md"Similarly, `let ... end` blocks allow you to define a separate envirionment. Everything you define in such a block is only available there."

# ╔═╡ c6ae05d2-7e8e-4683-b3e2-fe79d5e24e2f
let
	myprivatevar = 3.0
end

# ╔═╡ 9ce5dfc4-5715-4037-bf36-9e5f68c3273e
myprivatevar  # only available in the block

# ╔═╡ 962ae6d2-4ab7-11eb-14a2-c76a2221f544
τ = 1 / 37  # unicode variable names are allowed

# ╔═╡ 98d48302-4ab7-11eb-2397-710d0ae425f7
md"""

unicode! In most Julia editing environments, unicode math symbols can be typed when starting with a '\' and hitting '[TAB]'.

"""

# ╔═╡ acb3b57a-661c-11eb-2c6a-99793a47ff29
md"""> Unsure what the LaTeX name for a symbol is or how to type an emoiji? Just copy-paste it in the REPL with a `?` at the beginning, e.g., `?ζ` and it will tell you how to type it."""

# ╔═╡ cee8a766-4ab7-11eb-2bc7-898df2c9b1ff
:α

# ╔═╡ e2c5b558-4ab7-11eb-09be-b354fc56cc6e
md"Operators are overrated for multiplication."

# ╔═╡ ec754104-4ab7-11eb-2a44-557e4304dd43
5x         # This works

# ╔═╡ f23a2d2a-4ab7-11eb-1e26-bb2d1d19829f
md"But strings are quite essential,"

# ╔═╡ fa836e88-4ab7-11eb-0ba6-5fc7372f32ab
mystery = "life, the universe and everything"

# ╔═╡ 0138ef46-4ab8-11eb-1813-55594927d661
md"and string interpolation is performed with `$`."

# ╔═╡ 0b73d66a-4ab8-11eb-06e9-bbe95285a69f
"The answer to $mystery is $(3*2*7)"

# ╔═╡ 6b6eb954-4ab8-11eb-17f9-ef3445d359a3
md"""
Printing can be done with `println()`. These Pluto notebooks distinguish the value of the evaluation or computation from what is printed. The latter is shown in a terminal.
"""

# ╔═╡ 94e3eb74-4ab8-11eb-1b27-573dd2f02b1d
println("The answer to $mystery is $(3*2*7)")

# ╔═╡ abf00a78-4ab8-11eb-1063-1bf4905ca250
md"""
repetitions of strings can be done using the operators `*` and `^`.
This use of `*` and `^` makes sense by analogy with multiplication and exponentiation. Just as `4^3` is equivalent to `4*4*4`, we expect `"Spam"^3` to be the same as `"Spam"*"Spam"*"Spam"`, and it is.
"""

# ╔═╡ be220a48-4ab8-11eb-1cd4-db99cd9db066
breakfast = "eggs"

# ╔═╡ cadaf948-4ab8-11eb-3110-259768055e85
abetterbreakfast = "SPAM"

# ╔═╡ cadb506e-4ab8-11eb-23ed-2d5f88fd30b0
breakfast * abetterbreakfast

# ╔═╡ caf56346-4ab8-11eb-38f5-41336c5b45a7
breakfast * abetterbreakfast^3 * breakfast

# ╔═╡ 046133a8-4ab9-11eb-0591-9de27d85bbca
md"""
Lots of handy `String`-operations are available in the standard library of Julia:
"""

# ╔═╡ 0c8bc7f0-4ab9-11eb-1c73-b7ec002c4155
uppercase("Sometimes I feel like shouting.")

# ╔═╡ 0f8a311e-4ab9-11eb-1b64-cd62b65c49bf
findfirst("a", "banana")

# ╔═╡ 0f8a5e94-4ab9-11eb-170b-cfec74d6ebbc
findfirst("na", "banana")

# ╔═╡ 0f96fdd6-4ab9-11eb-0e33-2719394a66ba
findnext("na", "banana", 4)  # start looking from position 4 onwards

# ╔═╡ 1f255304-4ab9-11eb-34f1-270fd5a95256
md"Unlike `Strings`, a `Char` value represents a single character and is surrounded by single quotes."

# ╔═╡ 34a18900-4ab9-11eb-17a0-1168dd9d06f9
'x'

# ╔═╡ 39a0a328-4ab9-11eb-0f37-6717095b56aa
md"
The operator `∈` (\in [TAB]) is a boolean operator that takes a character and a string and returns `true` if the first appears in the second:"

# ╔═╡ 4749f268-4ab9-11eb-15a7-579437e0bd20
'a' ∈ "banana"

# ╔═╡ 5a9bbbe6-4aba-11eb-3652-43eb7891f437
md"""
	
	> **Question 1** Check the behaviour of the relational operators on strings.
	
	```julia
	"apples" == "pears"
	"apples" < "pears"
	"apples" < "Pears"
	```
	"""

# ╔═╡ a69ead46-4abc-11eb-3d1d-eb1c73f65150
md"All binary arithmetic and bitwise operators have an updating version that assigns the result of the operation back into the left operand. The updating version of the binary operator is formed by placing a, `=`, immediately after the operator."

# ╔═╡ b482b998-4abc-11eb-36da-379010485bfa
let         # the `let`-environment creates a local workspace, x will only exist here.
	x = 1   # inplace update of x
	x += 2  # inplace update of x
	x += 2
end

# ╔═╡ 07b103ae-4abd-11eb-311b-278d1e033642
md"Similarly to Matlab, when using the REPL, Julia will print the result of every statement by default. To suppress this behavious, just end the statement with a semicolon."

# ╔═╡ 15f8b7fe-4abd-11eb-2777-8fc8bf9d342e
var1 = 10;  # not printed...

# ╔═╡ efae58fa-5008-11eb-32fe-c3ae588d14f2
var1  # ...but still defined

# ╔═╡ 18f99e46-4abd-11eb-20a8-859cb1b12fe3
var2 = 20

# ╔═╡ 3a7954da-4abd-11eb-3c5b-858054b4d06b
md"""## 2. Logical statements

*From zero to one.*
"""


# ╔═╡ 8b17d538-4abd-11eb-0543-ab95c9548d6f
md"""**Boolean operators**

Julia uses `true` and `false` for Boolean variables.
"""

# ╔═╡ 29d34e64-5009-11eb-3301-f729150e17b2
I💖Julia = true 

# ╔═╡ 91a9d1a0-4abd-11eb-3337-71983f32b6ae
!true

# ╔═╡ 942d4202-4abd-11eb-1f01-dfe3df40a5b7
!false

# ╔═╡ 942dae0e-4abd-11eb-20a2-37d9c9882ba8
1 == 1

# ╔═╡ 943d9850-4abd-11eb-1cbc-a1bef988c910
2 == 1

# ╔═╡ 943de2ce-4abd-11eb-2410-31382ae9c74f
1 != 1

# ╔═╡ 9460c03c-4abd-11eb-0d60-4d8aeb5b0c1d
2 != 1

# ╔═╡ 946161f4-4abd-11eb-0ec5-df225dc140d0
1 < 10

# ╔═╡ 947d143a-4abd-11eb-067d-dff955c90407
1 > 10

# ╔═╡ 947fea8e-4abd-11eb-1d6a-2bc540f7a50e
2 <= 2  # or 2 ≤ 2  (\le<TAB>)

# ╔═╡ 948eff10-4abd-11eb-36d0-5183e882a9e2
2 >= 2  # or 2 ≥ 2  (\ge<TAB>)

# ╔═╡ 948f5032-4abd-11eb-3d1c-7da4cb64521c
# Comparisons can be chained
1 < 2 < 3

# ╔═╡ 94b520e6-4abd-11eb-3161-addf3b0e4f24
2 < 3 < 2

# ╔═╡ 94b78322-4abd-11eb-3006-454548efd164
# Logical operators
true && true

# ╔═╡ 94d28c80-4abd-11eb-08c0-717207e4c682
true || false

# ╔═╡ 9fe6e1a2-4abd-11eb-0c39-458ce94265c0
md"Likewise, we have the Boolean logic operators `&&` (AND), `||` (OR) and `⊻` (XOR, exclusive or)."

# ╔═╡ ae26ab9e-4abd-11eb-3270-33558dbdf663
true && true

# ╔═╡ b08dc886-4abd-11eb-1807-096a7e6fd6f9
true && false

# ╔═╡ b08e3a28-4abd-11eb-258a-a5a93b4b882c
true || false

# ╔═╡ b0a8dfe0-4abd-11eb-167d-2fc3974c7c92
false || false

# ╔═╡ b0a97e00-4abd-11eb-371c-e138aea17bb6
true ⊻ false

# ╔═╡ b0ccc252-4abd-11eb-048b-4bec3750bbf1
true ⊻ true

# ╔═╡ 60b066d8-5009-11eb-3b4c-8b8fa2f4831d
md"""
Chaining logic operators is frequently done in Julia as a short alternative for an `if` statement. The idea is if you use an `&&` statement, the second part is only evaluated if the first part is true! The inverse is true for `||`, where the second part is only evaluated if the first part is false."""

# ╔═╡ b8b7c0f6-5009-11eb-1eb7-0be723a88863
let
	x = 12
	(x > 10) && (x -= 5)  # I am evaluated!
	(x > 4) || (x *= 2)   # I am not... 
	x
end

# ╔═╡ 0af7ca88-dc00-407b-af0d-bd7a99f23e92
md"""
**Question 2: advanced logical statements**

Predict the outcomes of the following statements.
	
```julia
z, y = true, false

(z || y) && !(y || y) # first

(z ⊻ y) && (!z ⊻ !y)  # second

(z || y) ⊻ (z && y)   # third
```
"""

# ╔═╡ 1c5975ec-4abe-11eb-0ff0-bfb2f03a520b
let
	z, y = true, false
	statements = [ 
		(z || y) && !(y || y),  # first statement
		(z ⊻ y) && (!z ⊻ !y),   # second statement
		(z || y) ⊻ (z && y)     # third statement
	]
end

# ╔═╡ 1c22b880-4abf-11eb-3f18-756c1198ccad
md"## 3. Control flow"

# ╔═╡ 37086212-4abf-11eb-3ec9-7f8dae57121e
md"The `if`, `else`, `elseif`-statement is instrumental to any programming language./ Note that control flow is ended with an `end` statement. In constrast to Python, tabs are only for clarity but do not impact functionality."

# ╔═╡ 489421d8-4abf-11eb-0d5e-fd779cc918a1
if 4 > 3
  'A'
elseif 3 > 4
  'B'
else
  'C'
end

# ╔═╡ 6736dafe-4abf-11eb-1fce-0716d2b7f4a8
md"""
Julia allows for some very condense control flow structures.
y = `condition` ? `valueiftrue` : `valueiffalse`. To make this work Julia requires spaces around the ? and the : 
"""

# ╔═╡ 20eab2a7-c3d0-469e-aac0-cd9fc6a4a758
md"""
> **Question 3** Complete the clip function: $\max(0, \min(1, x))$ for a given $x$, **without** making use of the functions `min` and `max`.

Open assignments always return `missing`.
"""

# ╔═╡ 0c693c24-4ac0-11eb-2329-c743dcc5039d

clip(x) =
if x < 0 
	0
elseif x > 1
	1
else
	x
end

# ╔═╡ 035a53ba-4ac1-11eb-3c34-b50a803b7b7d
if !ismissing(clip(3))
	md"Oh yeah! 🎉 You defined your first function in Julia. More on this later."
end

# ╔═╡ 2a5fca7c-4ac0-11eb-33a3-23d972ca27b8
md"## 4. Looping"

# ╔═╡ 3896642a-4ac0-11eb-2c7c-4f376ab82217
characters = ["Harry", "Ron", "Hermione"]

# ╔═╡ 3ef3faf8-4ac0-11eb-1965-fd23413e29f3
begin
	for char in characters
	  println("Character $char")
	end
end

# ╔═╡ 3916f50e-661d-11eb-0829-cb3821836fdf
md"We can use `enumerate` to generate an iterator of tuples containing the index and the values of an iterator."

# ╔═╡ 4118016e-4ac0-11eb-18bf-5de326782c87
begin
	for (i, char) in enumerate(characters)
	  println("$i. $char")
	end
end

# ╔═╡ 4119fbca-4ac0-11eb-1ea9-0bdd324214c5
pets = ["Hedwig", "Pig", "Crookhanks"]

# ╔═╡ 5ebe25c0-661d-11eb-389b-3d81570f7cf0
md"`zip` binds two or more iterators and yield tuples of the pairs."

# ╔═╡ 4139bf3c-4ac0-11eb-2b63-77a513149351
begin
	for (char, pet) in zip(characters, pets)
	  println("$char has $pet as a pet")
	end
end

# ╔═╡ a1d4127c-4ac0-11eb-116f-79c6ee58f524
md"Strings can also be looped"

# ╔═╡ a93b28e6-4ac0-11eb-074f-a7b64f43a194
getme = "a shrubbery"

# ╔═╡ ac35b796-4ac0-11eb-3bc5-5ff4350d5452
begin
	for letter in getme  # or, equivalently, use `∈` instead of `in` to look like a mathematician!
	  println("$letter")
	end
end

# ╔═╡ b18e55ae-4ac0-11eb-1455-21b83b7c61d5
let 
	n = 16757676187786;
	steps = 0
	while n > 1
	  println(n)
	  steps = steps +1
	  if iseven(n)
		n = div(n, 2)
	  else
		n = 3n + 1
	  end
	end
	n, steps
end

# ╔═╡ ec4190a8-4ac0-11eb-0421-398f063775bb
md"(Mathematical note: [they got closer to cracking this one](https://www.quantamagazine.org/mathematician-terence-tao-and-the-collatz-conjecture-20191211/?mc_cid=a3adbffb9f&mc_eid=41ed2fca13).)"

# ╔═╡ 7dce10be-500c-11eb-12cf-43f6989aae91
md"A useful trick when working with loops is using `break` and `continue` statements. If a `break` is encountered, the loop will immediately be exited. A `continue` statement will only skip the rest of the current iteration but will not halt the loop."

# ╔═╡ bafbe0ea-500c-11eb-10be-75d1738d42a2
let
	i = 1
	while true  # infinite loop
		if i^2 ≥ 231
			break
		end
		i += 1
	end
	i  # first integer with a square larger than 231
end

# ╔═╡ 2033383e-500d-11eb-3aea-cdc1e90dad2c
let
	s = 0
	for i in 1:100
		!isodd(i) && continue
		s += i
	end
	s # sum of all odd numbers between 1 and 100
end

# ╔═╡ fdb67aba-4ac0-11eb-1d4a-c354de54baa9
md"""## 5. Functions
Julia puts the fun in functions. User-defined functions can be declared as follows,
"""

# ╔═╡ 28f47a24-4ac1-11eb-271f-6b4de7311db3
function square(x)
  result = x * x
  return result
end

# ╔═╡ 47338c78-4ac1-11eb-04d6-35c2361eaea6
md"A more condensed version of of `square(x)`."

# ╔═╡ 463689b0-4ac1-11eb-1b0f-b7a239011c5c
s(x) = x * x

# ╔═╡ 9eee532d-33a4-450e-befc-cc66e7a50eed
t = x -> x*x

# ╔═╡ 52bfff04-4ac1-11eb-1216-25eedd9184c3
md"Passing an array to a function that takes a single element as argument takes a special syntax. By putting a `.` before the brackets, the function is executed on all the elements of the Array. More on this in **part2: collections**."

# ╔═╡ 61846dae-4ac1-11eb-389a-4fbe3f6145b1
s([1, 2, 3, 4, 5])   # Multiplication is not defined for Arrays

# ╔═╡ 6321ae1a-4ac1-11eb-04cb-33e939694874
s.([1, 2, 3, 4, 5])  # This is an elements-wise execution of s()

# ╔═╡ 3eda5d12-5a6e-11eb-3264-9925907c85b5
md"Maybe you are of the opinion that squaring a vector should automatically involve squaring the elements, or you might want to concatenate strings using `+`. Tomorrow we will learn to 'overload' functions to induce specific behaviour for specific datatypes!"

# ╔═╡ 7b874424-4ac1-11eb-2d4e-0b4607559b8f
md"""Keyword arguments are defined using a semicolon in the back signature and a default value can be assigned. "Keywords" assigned before a semicolon (`;`) are default values but their keywords are not ignored."""

# ╔═╡ 86defe2a-4ac1-11eb-3c01-c5e671877212
safelog(x, offset=0.1; base=10) = log(x + offset) / log(base)

# ╔═╡ 886512de-4ac1-11eb-00e1-73292ec23277
safelog(0)

# ╔═╡ 88678820-4ac1-11eb-272e-0df61e418900
safelog(0, 0.01)

# ╔═╡ 888dee1e-4ac1-11eb-264d-cd4a4f30f498
safelog(0, 0.01, base=2)

# ╔═╡ 8acb086c-4ac1-11eb-1715-756fde34b38f
md"""When functions have a variable number of arguments, one can use the *slurping* `...` operator to denote a variable number of arguments. The argument will be treated as a collection. For example"""

# ╔═╡ 944e1aaa-4ac1-11eb-0e23-41b1c5d0e889
function mymean(X...)
  m = 0.0
  for x in X
	m += x
  end
  return m / length(X)
end

# ╔═╡ 9d4e11be-4ac1-11eb-1fa0-13f1fe60c3bc
mymean(1, 3, 5)

# ╔═╡ 9d514ef6-4ac1-11eb-25fc-ffaa2dcc9b02
mymean(1, 3, 5, 7)

# ╔═╡ a0781222-4ac1-11eb-3425-d9b9603487f3
md"Similarly, the *splatting* operator can be used to split a collection into its individual elements."

# ╔═╡ a6b95d62-4ac1-11eb-0c93-7fa0f6a120d5
var3 = [1.0, 3.0, 5.0];

# ╔═╡ ab006064-4ac1-11eb-32be-6557b8d45f32
mymean(var3...)

# ╔═╡ b0603566-4ac1-11eb-17bc-3b63cd2aa1e9
md"""When unsure of what a function does, in the REPL the documentation can be viewed by adding a "?" in front of the function. Here, in the Pluto environment, put the cursor in the function of interest and open the documentation tab (look on your right)."""

# ╔═╡ 14bb078b-51b7-48d4-82cd-89c8ed36e444
md"""
> **Question 4** What is the difference between `max` and `maximum`?

Hint: check the live docs on the right.
"""

# ╔═╡ beafce06-4ac1-11eb-2431-1ffeba45716b
sort

# ╔═╡ ec487488-4ac1-11eb-1be3-a93e41f78bf3
md"""
For a lot of standard Julia functions an in-place version is defined. In-place means that the function changes one of the input arguments of the function. As an example, `sort()` sorts and returns the array passed as argument, it does not change the original array. In contrast, `sort!()` is the inplace version of sort and directly sorts the array passed as argument.
"""

# ╔═╡ f88fee6c-4ac1-11eb-1671-43493122f061
my_unsorted_list = [4, 5, 9, 7, 1, 9]

# ╔═╡ fa759f92-4ac1-11eb-0d72-1f9d6d38a831
sort(my_unsorted_list)

# ╔═╡ fa7ba458-4ac1-11eb-2ca1-59ff3c032b26
my_unsorted_list

# ╔═╡ fa9b3266-4ac1-11eb-153a-87c6a1124890
sort!(my_unsorted_list)

# ╔═╡ fa9d43b2-4ac1-11eb-33fc-a37503cedabf
my_unsorted_list

# ╔═╡ 0dbe0c34-500e-11eb-2633-67d8dc6b24c8
md"""
Functions are first-class and work just like any other variable! For example, you can give a function as an input in another function. 

In some cases, you might want to define an **anonymous function**, without given them a name:"""

# ╔═╡ 900da226-500e-11eb-3f1c-5582ed0cf749
afun = x -> 2x^2 - 2x + 4

# ╔═╡ b24bee9a-500e-11eb-2130-45b78bbebdec
afun(4)  # can be used as a regular function

# ╔═╡ c8cf6520-500e-11eb-2dd3-4507a3994a83
md"""
A particular powerful tool is creating a **pipeline**, i.e., using the output of a previous function as input of the next one. This can be done using the `|>` syntax."""

# ╔═╡ 19402512-500f-11eb-3ea7-c3d1c52025d6
π/4 |> sin |> inv 

# ╔═╡ 6dc0eaae-500f-11eb-3051-37d870366201
md"The `.` syntax also works here and it is often useful to combine with anonymous functions."

# ╔═╡ 8b57c506-500f-11eb-3114-55785eb593a7
1:1000_000_000 .|> abs2 .|> inv |> sum |> (x->6x) |> sqrt  # poor man's pi

# ╔═╡ cfd8a346-d3fe-49bb-a2e4-10d7c6047436
π

# ╔═╡ fd171e0e-4ac1-11eb-09ea-337d17500149
md"Specific functions can be generated if you have more information on the input type.
This is called multiple dispatch.

The `::` operator attaches type annotations to expressions and variables.

How does the documentation for the function square look like after you executed the cell below?"

# ╔═╡ 10e71260-4ac2-11eb-1069-55613ee7df0a
function square(x::Float64)
  println("using function with floats")
  result = x * x
  return result
end

# ╔═╡ 3e433ab4-4ac1-11eb-2178-53b7220fa9ab
square(2)

# ╔═╡ 46112c44-4ac1-11eb-2ad8-030406c7cf67
square(2.0)

# ╔═╡ 461489fa-4ac1-11eb-0596-1d3bedb61778
square("ni")   # the multiplication of strings is defined as a concatenation

# ╔═╡ 1c0230f8-4ac2-11eb-32aa-e7a4b2ae9cff
square(4) #... nothing is printed, obviously

# ╔═╡ 226417c2-4ac2-11eb-2914-196461e2b40e
square(4.)

# ╔═╡ 3daf4fa6-4ac2-11eb-0541-b98c2e97dfe4
md"More about types in the next section!"

# ╔═╡ a777f624-4f2f-11eb-0595-432ea5115a2d
md"## Intermezzo: Types"

# ╔═╡ abb7bf4e-4f2f-11eb-1dde-abf1cb0fb8b4
 md"""All Julia objects, both those already defined as well as those you might make yourself, have a type. The type system is the secret sauce, allowing Julia to be fast because code can be specialized for a particular combination of types. It is also supremely useful in conjunction with *multiple dispatch*, in which functions work differently depending on which types you feed into them. In one of the exercises at the end of this notebook you will get a taster of how multiple dispatch can be used. A function behaviour changes depending on the type of the arguments. Day 2 will mainly focus on the type system, so in what follows, a concise introduction is given to types."""

# ╔═╡ b63533e8-4f2f-11eb-3811-5f43fcaa2a9e
begin
	number = 42
	str = "mice"
	var4 = 0.9
	A = [1 2; 3 4]
end;

# ╔═╡ b730b7b8-4f2f-11eb-3216-613c6100fb9c
typeof(number)

# ╔═╡ b99eb16c-4f2f-11eb-0f1e-5d2b1244689f
typeof(str)

# ╔═╡ bc67fc50-4f2f-11eb-2209-bf35df0e8c27
typeof(var4)

# ╔═╡ bf40274a-4f2f-11eb-0086-d3502f67161b
typeof(A)

# ╔═╡ c48e035c-4f2f-11eb-12c7-576aadca7511
md"**Multiple dispatch**"

# ╔═╡ c8435740-4f2f-11eb-3046-3d45d5e0e805
md"Multiple dispatch is a concept where the behaviour of a function can be specified differently according to the type of the input arguments. Let's us look at an example,"

# ╔═╡ cacb7254-4f2f-11eb-1daa-1bc04678835c
begin 
	mytranslate(xy::Array) = xy .+ [1 3]
	mytranslate(s::String) = Markdown.parse("[Ctrl + click here](https://translate.google.com/?sl=en&tl=nl&text=$(s)&op=translate)")
	mytranslate(anything::Any) = "I'm lost in translation..."
end

# ╔═╡ cc48bc9a-4f2f-11eb-134c-71bd8a944943
mytranslate(1.0)

# ╔═╡ d9f28c04-4f2f-11eb-0255-1965fb8f07b5
mytranslate([0.0 0.0])

# ╔═╡ dc1dbe90-4f2f-11eb-05ce-c1fe46ae14dd
mytranslate("Hi how are you?")

# ╔═╡ de48a3f6-4f2f-11eb-314b-493546c37a21
 md"A great deal of time will be spend on the julia's time system in day 2. So do not worry if this still feels vague. Just **remember** that all objects have a type and the behaviour of a function can vary depending on the type of the input arguments."

# ╔═╡ 6da71180-4ac2-11eb-1cac-410bd1cce70c
md"""## 6. Macros
Macros provide a method to include generated code in the final body of a program. It is a way of generating a new output expression, given an unevaluated input expression. When your Julia program runs, it first parses and evaluates the macro, and the processed code produced by the macro is eventually evaluated like an ordinary expression.

Some nifty basic macros are `@time` and `@show`. `@time` prints the cpu time and memory allocations of an expression.
"""

# ╔═╡ 85b96ff0-4ac2-11eb-077f-cf4aad8a3c24
@time square(10)

# ╔═╡ a11c2898-4ac2-11eb-24d3-6f8060b5fd65
md"""The `@show` macro is often useful for debugging purposes. It displays both the expression to be evaluated and its result, finally returning the value of the result."""

# ╔═╡ a686e67e-4ac2-11eb-228e-23524a3ddc59
@show 1 + 1

# ╔═╡ d50cced2-500d-11eb-2dcc-21fc50825f43
md"We will provide more examples tomorrow!"

# ╔═╡ ad156892-4ac2-11eb-3634-a3783231e5a1
md"""## 7. Plotting

Quite essential for scientific programming is the visualisation of the results. `Plots` is the Julia package that handles a lot of the visualisation. `rand(10)`, returns an array of 10 random floats between 0 and 1.
"""

# ╔═╡ d779956a-4ac2-11eb-39de-4b3cecace452
md"""When loading in a package for the first time Julia will have to precompile this package, hence this step can take some time."""

# ╔═╡ c7d2a048-4ac2-11eb-3902-b7c8505096ae
begin 
	plot(1:10, rand(10), label="first")
	plot!(1:10, rand(10), label="second") # adding to current figure using plot!

	scatter!([1:10], randn(10), label="scatter")

	xlabel!("x")
	ylabel!("f(x)")
	title!("My pretty Julia plot")
end

# ╔═╡ cf35b2b2-4ac2-11eb-1ae6-5d3c108210df
plot(0:0.1:10, x -> sin(x) / x, xlabel="x", ylabel="sin(x)/x", color=:red, marker=:square, legend=:none) 
# notice the use of a symbol as an argument !

# ╔═╡ d1010f88-4ac2-11eb-0fa9-0902fef0cf9f
contour(-5:0.1:5, -10:0.1:10, (x, y) -> 3x^2-4y^2 + x*y/6)

# ╔═╡ 0e63d722-4ac3-11eb-3740-d31b47a77912
md"""### 8. Exercises"""

# ╔═╡ 5ab03afc-a5fe-4d89-9327-81cc24afd4e0
md"""
> **Question 5: Stirling's approximation for factorials**

The factorial function,

$${\displaystyle n!=1\cdot 2\cdot 3\cdots (n-2)\cdot (n-1)\cdot n,}$$

is often used in combinatorics but also other mathematical areas. Especially for large numbers it can get quite inefficient to compute. Stirling's approximation is an approximation for factorials,

$${\displaystyle n!\sim {\sqrt {2\pi n}}\left({\frac {n}{e}}\right)^{n},}$$
	
Complete the function `stirling()` by implementing Stirling's approximation.

*Optional question* (easy) How accurate is this approximation? Plot the true factorial function (scatter) on top of the approximation for n ∈ [0, 10]. 
"""

# ╔═╡ 3c06cb23-20a1-4def-921f-52977822f442
function stirling_approx(n) 
	sqrt(2*π*n)*(n/ℯ)^n
end

# ╔═╡ d735b51a-9229-45d2-889a-e51ebc31b716
begin
	plot(1:10, factorial)
	scatter!(1:10, stirling_approx, xlabel="n", ylabel="approximation", color=:red, marker=:square, legend=:none)
end

# ╔═╡ 827eae18-1d3d-4443-8d5e-2aa676f56935
begin
	plot(1:20, n -> stirling_approx(n) / factorial(n) - 1 , xlabel="n", ylabel="relative error", color=:red, marker=:square, legend=:none)
end

# ╔═╡ adb47b64-5af8-11eb-1b32-57cbe5d47200
md"""
> **Question 6: Narcissistic numbers**

[source](https://www.w3resource.com/python-exercises/basic/)

If you are a reader of Greek mythology, then you are probably familiar with Narcissus. He was a hunter of exceptional beauty, and he died because he was unable to leave a pool after falling in love with his own reflection. That's why I keep myself away from pools these days (kidding).
In mathematics, he has kins called narcissistic numbers - numbers that can't get enough of themselves. In particular, they are numbers that are the sum of their digits when raised to the power of the number of digits.


For example, 371 is a narcissistic number; it has three digits, and if we cube each digits 3^3 + 7^3 + 1^3 the sum is 371. Other 3-digit narcissistic numbers are
```
153 = 1^3 + 5^3 + 3^3
370 = 3^3 + 7^3 + 0^3
407 = 4^3 + 0^3 + 7^3.
```
There are also 4-digit narcissistic numbers, some of which are 1634, 8208, 9474 since
```
1634 = 1^4+6^4+3^4+4^4
8208 = 8^4+2^4+0^4+8^4
9474 = 9^4+4^4+7^4+4^4
```
It has been proven that there are only 88 narcissistic numbers (in the decimal system) and that the largest of which is
115,132,219,018,763,992,565,095,597,973,971,522,401
has 39 digits.

Complete the function `isnarcistic`, which returns `true` if the input is narcissistic. Use the function `filter` to find all narcissistic numbers up to 100000.
"""

# ╔═╡ 0cd2d0e4-59e1-11eb-112e-83ebe626f597
function isnarcistic(n)
	@assert n isa Integer
	ds = digits(n) 
	power = length(ds)
	return n == ds .^ power |> sum
end

# ╔═╡ de609dc8-f004-4412-aef6-82f62803ba86
isnarcistic(153)  # true

# ╔═╡ 4fd2ae04-c611-48f4-8af8-5ee7f07f7914
isnarcistic(197)  # false

# ╔═╡ 9bbf8541-795b-4b09-b2ac-db37fa2b8fca
0:100_000 |> filter(isnarcistic)

# ╔═╡ b1af96ea-5af8-11eb-0d08-f59a4c2b686c
md"""
> **Question 7: Check Fermat**

Fermat’s Last Theorem says that there are no positive integers $a$, $b$, and $c$ such that

$a^n + b^n = c^n$

for any value of $n$ greater than 2.

1. Write a function named `checkfermat` that takes four parameters ($a$, $b$, $c$ and $n$) and checks to see if Fermat’s theorem holds. If $n$ is greater than 2 and $a^n + b^n == c^n$ the program should print, *"Holy smokes, Fermat was wrong!"* Otherwise, the program should print and return, *"No, that doesn’t work."*
2. Write a function that takes four random positive integers for $a$, $b$, $c$ and $n$, and use `checkfermat` to check whether they violate Fermat’s theorem.
3. Can you write the code so that the functions in 2.1 and 2.2 have the same name?

Hints:
- check the functions `rand` and `abs`.
- You can write multiple functions with the same name but with a different number or type of input arguments. So you can write a second version of `checkfermat` with no input arguments for a random version. Depending on the number and the type of the arguments, Julia will choose the appropriate version of `checkfermat` Remember that this construct is called multiple dispatch.
- In Pluto, you must put methods of the same name in a `begin ... end` block.
"""

# ╔═╡ bf53d86c-59e1-11eb-1456-5518e1f63390
begin
	function checkfermat(a::Int, b::Int, c::Int, n::Int)
		if a ^ n + b ^ n == c ^ n 
			if n ≤ 2
				answer = "That works; n ≤ 2."
			else
				answer = "Holy smokes, Fermat was wrong!" 
			end
		else
			answer = "No, that doesn't work."
		end
		println(answer)
		return answer
	end
	function checkfermat()
		a, b, c, n = rand(1:10, 4) .|> abs 
		return checkfermat(a,b,c,n)
	end
end

# ╔═╡ da5537b5-88e7-4377-90c6-abbc7eaf6495
md"""
Insert some numbers below to test your function `checkfermat()`\
a = $(@bind a NumberField(1:100000000))\
b = $(@bind b NumberField(1:100000000))\
c = $(@bind c NumberField(1:100000000))\
n = $(@bind n NumberField(1:100000000))
"""

# ╔═╡ b4118bfa-5af8-11eb-0aca-cddef8e191ee
checkfermat(a,b,c,n)

# ╔═╡ f077c390-57fe-11eb-1ad9-31110b3dac39
md"""### 9. Extra exercises"""

# ╔═╡ 5f6b3a73-9979-4fdd-b0d0-be43419c6547
md"""
> **Question 8: can you justify this?**

Write a function named `rightjustify` that takes a string named `s` as a parameter and prints the string with enough leading spaces so that the last letter of the string is in column 70 of the display.

Use string concatenation and repetition. Also, Julia provides a built-in function called `length`. Check what it does!
"""

# ╔═╡ 87871f34-4ad1-11eb-3903-93e3f63ea14a
function rightjustify(text)
	println(" "^(70-length(s)) * s)
end

# ╔═╡ e2583a06-6479-11eb-091b-8be70024930d
md"""
**Question 9: Molecular mass spectroscopy**

Analytical chemists at Ghent University have discovered a new analytical technique where organic molecules are partially burned into smaller molecules. These oxidised molecules can then be detected via acetatometry. 
		
An organic molecule entering the analyser will always follow the same degradation pattern and subsequently,

1. *CH₃*-endpoints will turn into *COOH*;
2. *CO-COOH*-endpoints are unstable and will evaporate;
3. Any *CH₂*-endpoints are unstable and will turn into *CH₃*;
4. The first *-CH₂-CH₂-* wil react to *CO*;
5. *CO* at the endpoints will be converted to *COOH*;
6. A *CO-CO-CO* is also very unstable and will turn into *CO-CH₂-CO*.
7. When *CH2* or *CH3* is the molecule that remains, it will change to *CH4*.

This degradation pattern is repeated until a stable molecule is obtained.

Let's take caproic acid for example,
	![](https://i.imgur.com/xsb9tGR.png)
	
with a structural formula of CH3-CH2-CH2-CH2-CH2-COOH, caproic acid will degrade following this pattern,
	
- Cycle 1: Step 1: CH₃ will turn into COOH: COOH-CH2-CH2-CH2-CH2-COOH.
- Cycle 1: Step2: No CO-COOH to remove: COOH-CH2-CH2-CH2-CH2-COOH.
- Cycle 1: Step3: No unstable CH₂ ends:  COOH-CH2-CH2-CH2-CH2-COOH.
- Cycle 1: Step4: Reaction of the first -CH₂-CH₂- to CO: COOH-CO-CH2-CH2-COOH.
- Cycle 1: Steps 5 & 6 do not change the molecule and a new cycle is repeated
- Cycle 2: Step 1 does not change the molecule.
- Cycle 2: Step 2 removes a single CO-COOH: CH2-CH2-COOH.
- Cycle 2: Step 3: changes the molecule to: CH3-CH2-COOH.
- ...
- Cycle 3: step 1: changes the molecule CH3-CH2-COOH to **COOH-CH2-COOH**.

  Additional cycles will not further degrade the structure of the molecule and can be considered stable. Caproic acid degraded into [malonic acid](https://en.wikipedia.org/wiki/Malonic_acid) (COOH-CH2-COOH)

All of the sudden you hear, *\"Eureka!\"* from the other end of the corridor. It appears the chemical engineers finally figured out how to get their molecular generator working. This machine creates random molecules with a set number of carbon atoms `N`. They even show you how it works (see `generator` below), it is quite simple actually (try to understand which string manupilation are being used here). 
		
The engineers would like you to analyse the molecules they generate, using the mass spectroscopy machine. They do not only want to know which molecules are obtained after degradation but also want to see the spread of the molecular weight of the degradation product. 
		
Degrade *1000* molecules containing *12* carbon atoms, compute the molecular weight of each component and plot a histogram that depicts the relative frequency to the molecular weight of these components.
		
| Group | Molecular weight (g/mol) |
|-------|--------------------------|
| CH4   | 16.0                     |
| CH3   | 15.0                     |
| CH2   | 14.0                     |
| CO    | 28.0                     |
| OH    | 17.0                     |
"""

# ╔═╡ 1f588828-6477-11eb-0c70-557f130c6785
function degrade(molecule::String)
	parts = split(molecule,"-") .|> String
	has_degraded = true

	while has_degraded
		has_degraded = false

	    # 1. CH₃-endpoints will turn into COOH;
		if length(parts) ≥ 1 && parts[1] == "CH3"
			parts[1] = "COOH"
			has_degraded = true
		end	
		if length(parts) ≥ 1 && parts[end] == "CH3"
			parts[end] = "COOH"
			has_degraded = true
		end
	
	    # 2. CO-COOH-endpoints are unstable and will evaporate;
		if length(parts) ≥ 2 && parts[1] == "COOH" && parts[2] == "CO"
			parts = parts[3:end]
			has_degraded = true
		end	
		if length(parts) ≥ 2 && parts[end] == "COOH" && parts[end-1] == "CO"
			parts = parts[1:end-2]
			has_degraded = true
		end
	
	    # 3. Any CH₂-endpoints are unstable and will turn into CH₃;
		if length(parts) ≥ 1 && parts[1] == "CH2"
			parts[1] = "CH3"
			has_degraded = true
		end	
		if length(parts) ≥ 1 && parts[end] == "CH2"
			parts[end] = "CH3"
			has_degraded = true
		end
		
	    # 4. The first -CH₂-CH₂- wil react to CO;
		for i in 1:length(parts)-1
			if parts[i] == "CH2" && parts[i+1] == "CH2"
				parts[i] = "CO"
				deleteat!(parts,i+1)
				has_degraded = true
				break
			end
		end
		
	
	    # 5. CO at the endpoints will be converted to COOH;
		if length(parts) ≥ 1 && parts[1] == "CO"
			parts[1] = "COOH"
			has_degraded = true
		end	
		if length(parts) ≥ 1 && parts[end] == "CO"
			parts[end] = "COOH"
			has_degraded = true
		end
		
	    # 6. A CO-CO-CO is also very unstable and will turn into CO-CH₂-CO.
		for i in 1:length(parts)-2
			if parts[i] == "CO" && parts[i+1] == "CO" && parts[i+2] == "CO"
				parts[i+1] = "CH2"
				has_degraded = true
			end
		end
		
	    # 7. When CH2 or CH3 is the molecule that remains, it will change to CH4.
		if length(parts) == 1 && (parts[1] == "CH2" || parts[1] == "CH3")
	    		parts[1] = "CH4"
				has_degraded = true
	    end
	end
	m = join(parts,"-")
	return m
	
end

# ╔═╡ 4d0e1d60-6476-11eb-154e-d9cc3bf284c2
caproic_acid = "CH3-CH2-CH2-CH2-CH2-COOH"

# ╔═╡ 5167ded6-6463-11eb-3279-0dd226fae82e
verylongium = "COOH-CO-CO-CH2-CH2-CO-CO-CH2-CO-CO-CH2-CH2-CO-CH2-CH2-CH2-CO-CH2-CO-CH2-CH2-CO-CH2-CH2-CO-CH2-CO-CH2-CH2-CO-CO-CH2-CH2-CH2-CH2-CH2-CO-CO-CH2-CH2-CO-CH2-CO-CH2-CO-CH2-CH2-CO-CO-CO-CH2-CO-CH2-CH2-CO-CO-CH2-CH2-CH2-CH2-CO-CH2-CH2-CO-CO-CO-CH2-CO-CH2-CH2-CH2-CO-CO-CO-CO-CO-CO-CH2-CH2-CH2-CO-CO-CO-CO-CH2-CH2-CH2-CO-CH2-CO-CO-CO-CO-CO-CH2-CO-CO-CH2-CH2-CH3" 

# ╔═╡ c4d03faa-647d-11eb-3a84-d7b2d53e4720
degrade(caproic_acid)

# ╔═╡ c55ed390-647d-11eb-22d5-33fbae27a2bb
function generator(N; tips=["CH3", "COOH"], backbone=["CH2", "CO"])
	return rand(tips) * "-" * reduce(*,rand(backbone,N-2).* "-") * rand(tips)
end

# ╔═╡ 23db2764-647e-11eb-37dd-a34db2ff0fcd
generator(6) #try rerunning this cell multiple times

# ╔═╡ 989d0dd2-647a-11eb-3123-39786452714a
C12 = [generator(12) for i in 1:10]

# ╔═╡ 061e4894-647b-11eb-06db-310d02463b80
function molecular_weight(molecule)
	dict = Dict([("CH4",16.0), ("CH3",15.0), ("CH2",14.0), ("CO",28.0), ("OH",17.0), ("COOH",45), ("",0.0), ])
	return split(molecule,"-") .|> (s -> dict[s]) |> sum
end

# ╔═╡ 89a9ad00-6489-11eb-2a2d-bfa18af103ab
histogram([generator(12) |> degrade |> molecular_weight for i ∈ 1:1000])

# ╔═╡ 0507186a-647a-11eb-07cf-ebf32bdff5b0
md"""
> **Question 10: grid print**

Complete the function `print_grid` that draws a grid like the following:
```
+ - - - - + - - - - +
|         |         |
|         |         |
|         |         |
|         |         |
+ - - - - + - - - - +
|         |         |
|         |         |
|         |         |
|         |         |
+ - - - - + - - - - +
```

Optional: Write a function `print_big_grid` that draws a similar grid with four rows and four columns. 
"""

# ╔═╡ 448ef88e-4ad2-11eb-20d6-17a51d665ef9
function print_grid_general(size::Int, nrow::Int,ncol::Int)
	dashes = " -" ^ size * " "
	edge_h = "+" * dashes 
	horizontal = edge_h ^ ncol * "+\n"
	edge_v = "|" * " " ^ (2*size +1)
	vertical = edge_v ^ ncol * "|\n"
	grid_row = horizontal * vertical ^ size
	grid = grid_row ^ nrow * horizontal
	println(grid)
end

# ╔═╡ 28c2ec4f-09ab-4d90-918f-ce19b132275e
print_grid_general(4,2,2)

# ╔═╡ 14d50ee8-4ad3-11eb-3b81-9138aec66207
print_grid_general(4,4,4)

# ╔═╡ d251a6ae-4985-44f3-90d1-27c2acfed272
print_grid_general(3,4,5)

# ╔═╡ 2bff11a1-7e39-43e5-8058-5d1496f43387
md"""## Answers
If you would like to take a look at the answers, you can do so by checking the box of the question you would like to see. The function will be shown just below the question you want to look at.

| Question | Show solution |
|-----|:---------:|
| Question 1 | $(@bind answ_q1 CheckBox()) |
| Question 2 | $(@bind answ_q2 CheckBox()) |
| Question 3 | $(@bind answ_q3 CheckBox()) |
| Question 4 | $(@bind answ_q4 CheckBox()) |
| Question 5 | $(@bind answ_q5 CheckBox()) |
| Question 6 | $(@bind answ_q6 CheckBox()) |
| Question 7 | $(@bind answ_q7 CheckBox()) |
| Question 8 | $(@bind answ_q8 CheckBox()) |
| Question 9 | $(@bind answ_q9 CheckBox()) |
| Question 10 | $(@bind answ_q10 CheckBox()) |
"""

# ╔═╡ c297d307-a640-4d86-aa0b-a149fe741bac
if answ_q1
	md""" 
	```julia
	false
	true
	false
	```
	"""
end

# ╔═╡ 10a31233-5de3-401b-abdd-a27908e2de9d
if answ_q2
	md""" 
	```julia
	statements = [
		true,
		true,
		true
	]
	```
	"""
end

# ╔═╡ 32c8ff60-9a35-4d40-8b54-b4805ca81885
if answ_q3
	md""" 
	```julia
	clip(x) = x < 1 ? (x > 0 ? x : 0) : 1
	```

	Later, we will see that a better form is

	```julia
	clip(x) = x < 1 ? (x > 0 ? x : (zero(x))) : one(x)
	```
	"""
end

# ╔═╡ a647ec42-1b3c-4280-958a-e2a96cd3d103
if answ_q4
	md""" 
	`max` gives you the maximum of the given arguments while `maximum` gives you the max of the given collection.
	"""
end

# ╔═╡ 9e211fbf-4c43-439a-95ba-86b48767c053
if answ_q5
	md""" 
	```julia
	stirling(n) = sqrt(2*π*n)*(n/exp(1))^n
	```
	"""
end

# ╔═╡ fd368fc2-2c64-463e-976e-9dd52ce80f13
if answ_q6
	md""" 
	```julia
	function isnarcistic(n)
		@assert n isa Integer
		n_digits = ceil(Int, log10(n))
		result = 0
		m = n
		for d in 1:n_digits
			r = m % 10
			result += r^n_digits
			m -= r
			m = m ÷ 10
		end
		return result == n
	end
	```

	The above code makes use of a bit of math. You can also turn the number in a string using `string` and use length and `convert(Int, s)` to convert numbers back.

	You can easily find narcistic numbers using `filter(isnarcistic, 1:100_000)`.
	"""
end

# ╔═╡ db78af32-b822-49dd-b085-6f51ba6b623f
if answ_q7
	md""" 
	```julia
	function checkfermat(a::Int, b::Int, c::Int, n::Int)
	  if a^n + b^n == c^n
		  println("Holy smokes, Fermat was wrong!")
	  else
		  println("No, that doesn’t work.")
	  end
	end
	```
	"""
end

# ╔═╡ c8151b58-735c-4f16-b410-0c5c88818e6d
if answ_q8
	md""" 
	```julia
	rightjustify(s) = println(" "^(70-length(s)) * s)
	```
	"""
end

# ╔═╡ c01bb803-2255-4164-b216-23ec7310f89f
if answ_q9
	md""" 
	```julia
	f1(s) = replace(s, "-CH3"=> "-COOH") |> s -> replace(s, "CH3-"=> "COOH-")
	f2(s) = replace(s, "-CO-COOH"=> "") |> s -> replace(s, "COOH-CO-"=> "")

	function f3(molecule)
	  if length(molecule) < 4
		molecule = "CH4"
		return molecule
	  end

	  if molecule[1:4] == "CH2-"
		molecule = "CH3-" * molecule[5:end]
	  end
	  if molecule[end-3:end] == "-CH2"
		molecule = molecule[1:end-4] * "-CH3"
	  end
	  return molecule
	end

	f4(s) = replace(s, "-CH2-CH2-"=> "-CO-")

	function f5(molecule)
	  if molecule[1:3] == "CO-"
		molecule = "COOH-" * molecule[4:end]
	  end

	  if molecule[end-2:end] == "-CO" 
		molecule = molecule[1:end-3] * "-COOH"
	  end
	  return molecule
	end 

	f6(s) = replace(s, "CO-CO-CO" => "CO-CH2-CO")

	function cycle(molecule)
	  molecule |> f1 |> f2 |> f3 |> f4 |> f5 |> f6
	end

	function degrade(molecule)
	  mol_prev = ""
	  while mol_prev !== molecule
		mol_prev = molecule
		molecule = cycle(molecule)
	  end
	  return molecule
	end
	```
	"""
end

# ╔═╡ 743924b0-0b3b-48e2-9b93-961311d08022
if answ_q9
	md""" 
	```julia
	function molecular_weight(molecule)
		return count("CH3", molecule)* 15.0 +
				count("CH4", molecule) * 16.0 +
				count("CH2", molecule) * 14.0 +
				count("CO", molecule) * 28.0 +
				count("OH", molecule) * 17
	end
	```
	"""
end

# ╔═╡ 15257785-52b5-4129-9e65-7fa15e83a6e3
if answ_q10
	md""" 
	```julia
	function print_grid()
	  dashed = " -"^4*" "
	  plusdash = "+"*dashed*"+"*dashed*"+"
	  verticals = ("|"*" "^9)^2*"|"
	  s = (plusdash * "\n" * (verticals * "\n")^4)^2*plusdash * "\n"
	  println(s)
	end
	```
	"""
end

# ╔═╡ 0f095a13-8586-4da3-84ae-24c43a303776
if answ_q10
	md""" 
	```julia
	function print_big_grid()
	  dashed = " -"^4*" "
	  plusdash = "+"*dashed*"+"*dashed*"+"
	  verticals = ("|"*" "^9)^2*"|"
	  s = (plusdash * "\n" * (verticals * "\n")^4)^2*plusdash * "\n"
	  println(s)
	end
	```
	"""
end

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
Plots = "91a5bcdd-55d7-5caf-9e0b-520d859cae80"
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
Plots = "~1.40.14"
PlutoUI = "~0.7.68"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.11.5"
manifest_format = "2.0"
project_hash = "06dd79d9fa54fa73c31c32146db696622fc30acb"

[[deps.AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "6e1d2a35f2f90a4bc7c2ed98079b2ba09c35b83a"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.3.2"

[[deps.AliasTables]]
deps = ["PtrArrays", "Random"]
git-tree-sha1 = "9876e1e164b144ca45e9e3198d0b689cadfed9ff"
uuid = "66dad0bd-aa9a-41b7-9441-69ab47430ed8"
version = "1.1.3"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"
version = "1.1.2"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"
version = "1.11.0"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"
version = "1.11.0"

[[deps.BitFlags]]
git-tree-sha1 = "0691e34b3bb8be9307330f88d1a3c3f25466c24d"
uuid = "d1d4a3ce-64b1-5f1a-9ba4-7e7e69966f35"
version = "0.1.9"

[[deps.Bzip2_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "1b96ea4a01afe0ea4090c5c8039690672dd13f2e"
uuid = "6e34b625-4abd-537c-b88f-471c36dfa7a0"
version = "1.0.9+0"

[[deps.Cairo_jll]]
deps = ["Artifacts", "Bzip2_jll", "CompilerSupportLibraries_jll", "Fontconfig_jll", "FreeType2_jll", "Glib_jll", "JLLWrappers", "LZO_jll", "Libdl", "Pixman_jll", "Xorg_libXext_jll", "Xorg_libXrender_jll", "Zlib_jll", "libpng_jll"]
git-tree-sha1 = "fde3bf89aead2e723284a8ff9cdf5b551ed700e8"
uuid = "83423d85-b0ee-5818-9007-b63ccbeb887a"
version = "1.18.5+0"

[[deps.CodecZlib]]
deps = ["TranscodingStreams", "Zlib_jll"]
git-tree-sha1 = "962834c22b66e32aa10f7611c08c8ca4e20749a9"
uuid = "944b1d66-785c-5afd-91f1-9de20f533193"
version = "0.7.8"

[[deps.ColorSchemes]]
deps = ["ColorTypes", "ColorVectorSpace", "Colors", "FixedPointNumbers", "PrecompileTools", "Random"]
git-tree-sha1 = "a656525c8b46aa6a1c76891552ed5381bb32ae7b"
uuid = "35d6a980-a343-548e-a6ea-1d62b119f2f4"
version = "3.30.0"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "67e11ee83a43eb71ddc950302c53bf33f0690dfe"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.12.1"
weakdeps = ["StyledStrings"]

    [deps.ColorTypes.extensions]
    StyledStringsExt = "StyledStrings"

[[deps.ColorVectorSpace]]
deps = ["ColorTypes", "FixedPointNumbers", "LinearAlgebra", "Requires", "Statistics", "TensorCore"]
git-tree-sha1 = "8b3b6f87ce8f65a2b4f857528fd8d70086cd72b1"
uuid = "c3611d14-8923-5661-9e6a-0046d554d3a4"
version = "0.11.0"

    [deps.ColorVectorSpace.extensions]
    SpecialFunctionsExt = "SpecialFunctions"

    [deps.ColorVectorSpace.weakdeps]
    SpecialFunctions = "276daf66-3868-5448-9aa4-cd146d93841b"

[[deps.Colors]]
deps = ["ColorTypes", "FixedPointNumbers", "Reexport"]
git-tree-sha1 = "37ea44092930b1811e666c3bc38065d7d87fcc74"
uuid = "5ae59095-9a9b-59fe-a467-6f913c188581"
version = "0.13.1"

[[deps.Compat]]
deps = ["TOML", "UUIDs"]
git-tree-sha1 = "3a3dfb30697e96a440e4149c8c51bf32f818c0f3"
uuid = "34da2185-b29b-5c13-b0c7-acf172513d20"
version = "4.17.0"
weakdeps = ["Dates", "LinearAlgebra"]

    [deps.Compat.extensions]
    CompatLinearAlgebraExt = "LinearAlgebra"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "1.1.1+0"

[[deps.ConcurrentUtilities]]
deps = ["Serialization", "Sockets"]
git-tree-sha1 = "d9d26935a0bcffc87d2613ce14c527c99fc543fd"
uuid = "f0e56b4a-5159-44fe-b623-3e5288b988bb"
version = "2.5.0"

[[deps.Contour]]
git-tree-sha1 = "439e35b0b36e2e5881738abc8857bd92ad6ff9a8"
uuid = "d38c429a-6771-53c6-b99e-75d170b6e991"
version = "0.6.3"

[[deps.DataAPI]]
git-tree-sha1 = "abe83f3a2f1b857aac70ef8b269080af17764bbe"
uuid = "9a962f9c-6df0-11e9-0e5d-c546b8b5ee8a"
version = "1.16.0"

[[deps.DataStructures]]
deps = ["Compat", "InteractiveUtils", "OrderedCollections"]
git-tree-sha1 = "4e1fe97fdaed23e9dc21d4d664bea76b65fc50a0"
uuid = "864edb3b-99cc-5e75-8d2d-829cb0a9cfe8"
version = "0.18.22"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"
version = "1.11.0"

[[deps.Dbus_jll]]
deps = ["Artifacts", "Expat_jll", "JLLWrappers", "Libdl"]
git-tree-sha1 = "473e9afc9cf30814eb67ffa5f2db7df82c3ad9fd"
uuid = "ee1fde0b-3d02-5ea6-8484-8dfef6360eab"
version = "1.16.2+0"

[[deps.DelimitedFiles]]
deps = ["Mmap"]
git-tree-sha1 = "9e2f36d3c96a820c678f2f1f1782582fcf685bae"
uuid = "8bb1440f-4735-579b-a4ab-409b98df4dab"
version = "1.9.1"

[[deps.DocStringExtensions]]
git-tree-sha1 = "7442a5dfe1ebb773c29cc2962a8980f47221d76c"
uuid = "ffbed154-4ef7-542d-bbb7-c09d3a79fcae"
version = "0.9.5"

[[deps.Downloads]]
deps = ["ArgTools", "FileWatching", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"
version = "1.6.0"

[[deps.EpollShim_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "8a4be429317c42cfae6a7fc03c31bad1970c310d"
uuid = "2702e6a9-849d-5ed8-8c21-79e8b8f9ee43"
version = "0.0.20230411+1"

[[deps.ExceptionUnwrapping]]
deps = ["Test"]
git-tree-sha1 = "d36f682e590a83d63d1c7dbd287573764682d12a"
uuid = "460bff9d-24e4-43bc-9d9f-a8973cb893f4"
version = "0.1.11"

[[deps.Expat_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "d55dffd9ae73ff72f1c0482454dcf2ec6c6c4a63"
uuid = "2e619515-83b5-522b-bb60-26c02a35a201"
version = "2.6.5+0"

[[deps.FFMPEG]]
deps = ["FFMPEG_jll"]
git-tree-sha1 = "53ebe7511fa11d33bec688a9178fac4e49eeee00"
uuid = "c87230d0-a227-11e9-1b43-d7ebe4e7570a"
version = "0.4.2"

[[deps.FFMPEG_jll]]
deps = ["Artifacts", "Bzip2_jll", "FreeType2_jll", "FriBidi_jll", "JLLWrappers", "LAME_jll", "Libdl", "Ogg_jll", "OpenSSL_jll", "Opus_jll", "PCRE2_jll", "Zlib_jll", "libaom_jll", "libass_jll", "libfdk_aac_jll", "libvorbis_jll", "x264_jll", "x265_jll"]
git-tree-sha1 = "466d45dc38e15794ec7d5d63ec03d776a9aff36e"
uuid = "b22a6f82-2f65-5046-a5b2-351ab43fb4e5"
version = "4.4.4+1"

[[deps.FileWatching]]
uuid = "7b1f6079-737a-58dc-b8bc-7a2ca5c1b5ee"
version = "1.11.0"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "05882d6995ae5c12bb5f36dd2ed3f61c98cbb172"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.5"

[[deps.Fontconfig_jll]]
deps = ["Artifacts", "Bzip2_jll", "Expat_jll", "FreeType2_jll", "JLLWrappers", "Libdl", "Libuuid_jll", "Zlib_jll"]
git-tree-sha1 = "301b5d5d731a0654825f1f2e906990f7141a106b"
uuid = "a3f928ae-7b40-5064-980b-68af3947d34b"
version = "2.16.0+0"

[[deps.Format]]
git-tree-sha1 = "9c68794ef81b08086aeb32eeaf33531668d5f5fc"
uuid = "1fa38f19-a742-5d3f-a2b9-30dd87b9d5f8"
version = "1.3.7"

[[deps.FreeType2_jll]]
deps = ["Artifacts", "Bzip2_jll", "JLLWrappers", "Libdl", "Zlib_jll"]
git-tree-sha1 = "2c5512e11c791d1baed2049c5652441b28fc6a31"
uuid = "d7e528f0-a631-5988-bf34-fe36492bcfd7"
version = "2.13.4+0"

[[deps.FriBidi_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "7a214fdac5ed5f59a22c2d9a885a16da1c74bbc7"
uuid = "559328eb-81f9-559d-9380-de523a88c83c"
version = "1.0.17+0"

[[deps.GLFW_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Libglvnd_jll", "Xorg_libXcursor_jll", "Xorg_libXi_jll", "Xorg_libXinerama_jll", "Xorg_libXrandr_jll", "libdecor_jll", "xkbcommon_jll"]
git-tree-sha1 = "fcb0584ff34e25155876418979d4c8971243bb89"
uuid = "0656b61e-2033-5cc2-a64a-77c0f6c09b89"
version = "3.4.0+2"

[[deps.GR]]
deps = ["Artifacts", "Base64", "DelimitedFiles", "Downloads", "GR_jll", "HTTP", "JSON", "Libdl", "LinearAlgebra", "Preferences", "Printf", "Qt6Wayland_jll", "Random", "Serialization", "Sockets", "TOML", "Tar", "Test", "p7zip_jll"]
git-tree-sha1 = "4424dca1462cc3f19a0e6f07b809ad948ac1d62b"
uuid = "28b8d3ca-fb5f-59d9-8090-bfdbd6d07a71"
version = "0.73.16"

[[deps.GR_jll]]
deps = ["Artifacts", "Bzip2_jll", "Cairo_jll", "FFMPEG_jll", "Fontconfig_jll", "FreeType2_jll", "GLFW_jll", "JLLWrappers", "JpegTurbo_jll", "Libdl", "Libtiff_jll", "Pixman_jll", "Qt6Base_jll", "Zlib_jll", "libpng_jll"]
git-tree-sha1 = "d7ecfaca1ad1886de4f9053b5b8aef34f36ede7f"
uuid = "d2c73de3-f751-5644-a686-071e5b155ba9"
version = "0.73.16+0"

[[deps.GettextRuntime_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "JLLWrappers", "Libdl", "Libiconv_jll"]
git-tree-sha1 = "45288942190db7c5f760f59c04495064eedf9340"
uuid = "b0724c58-0f36-5564-988d-3bb0596ebc4a"
version = "0.22.4+0"

[[deps.Glib_jll]]
deps = ["Artifacts", "GettextRuntime_jll", "JLLWrappers", "Libdl", "Libffi_jll", "Libiconv_jll", "Libmount_jll", "PCRE2_jll", "Zlib_jll"]
git-tree-sha1 = "35fbd0cefb04a516104b8e183ce0df11b70a3f1a"
uuid = "7746bdde-850d-59dc-9ae8-88ece973131d"
version = "2.84.3+0"

[[deps.Graphite2_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "8a6dbda1fd736d60cc477d99f2e7a042acfa46e8"
uuid = "3b182d85-2403-5c21-9c21-1e1f0cc25472"
version = "1.3.15+0"

[[deps.Grisu]]
git-tree-sha1 = "53bb909d1151e57e2484c3d1b53e19552b887fb2"
uuid = "42e2da0e-8278-4e71-bc24-59509adca0fe"
version = "1.0.2"

[[deps.HTTP]]
deps = ["Base64", "CodecZlib", "ConcurrentUtilities", "Dates", "ExceptionUnwrapping", "Logging", "LoggingExtras", "MbedTLS", "NetworkOptions", "OpenSSL", "PrecompileTools", "Random", "SimpleBufferStream", "Sockets", "URIs", "UUIDs"]
git-tree-sha1 = "ed5e9c58612c4e081aecdb6e1a479e18462e041e"
uuid = "cd3eb016-35fb-5094-929b-558a96fad6f3"
version = "1.10.17"

[[deps.HarfBuzz_jll]]
deps = ["Artifacts", "Cairo_jll", "Fontconfig_jll", "FreeType2_jll", "Glib_jll", "Graphite2_jll", "JLLWrappers", "Libdl", "Libffi_jll"]
git-tree-sha1 = "f923f9a774fcf3f5cb761bfa43aeadd689714813"
uuid = "2e76f6c2-a576-52d4-95c1-20adfe4de566"
version = "8.5.1+0"

[[deps.Hyperscript]]
deps = ["Test"]
git-tree-sha1 = "179267cfa5e712760cd43dcae385d7ea90cc25a4"
uuid = "47d2ed2b-36de-50cf-bf87-49c2cf4b8b91"
version = "0.0.5"

[[deps.HypertextLiteral]]
deps = ["Tricks"]
git-tree-sha1 = "7134810b1afce04bbc1045ca1985fbe81ce17653"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.5"

[[deps.IOCapture]]
deps = ["Logging", "Random"]
git-tree-sha1 = "b6d6bfdd7ce25b0f9b2f6b3dd56b2673a66c8770"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "0.2.5"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"
version = "1.11.0"

[[deps.IrrationalConstants]]
git-tree-sha1 = "e2222959fbc6c19554dc15174c81bf7bf3aa691c"
uuid = "92d709cd-6900-40b7-9082-c6be49f344b6"
version = "0.2.4"

[[deps.JLFzf]]
deps = ["REPL", "Random", "fzf_jll"]
git-tree-sha1 = "82f7acdc599b65e0f8ccd270ffa1467c21cb647b"
uuid = "1019f520-868f-41f5-a6de-eb00f4b6a39c"
version = "0.1.11"

[[deps.JLLWrappers]]
deps = ["Artifacts", "Preferences"]
git-tree-sha1 = "a007feb38b422fbdab534406aeca1b86823cb4d6"
uuid = "692b3bcd-3c85-4b1f-b108-f13ce0eb3210"
version = "1.7.0"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "31e996f0a15c7b280ba9f76636b3ff9e2ae58c9a"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.4"

[[deps.JpegTurbo_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "eac1206917768cb54957c65a615460d87b455fc1"
uuid = "aacddb02-875f-59d6-b918-886e6ef4fbf8"
version = "3.1.1+0"

[[deps.LAME_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "059aabebaa7c82ccb853dd4a0ee9d17796f7e1bc"
uuid = "c1c5ebd0-6772-5130-a774-d5fcae4a789d"
version = "3.100.3+0"

[[deps.LERC_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "aaafe88dccbd957a8d82f7d05be9b69172e0cee3"
uuid = "88015f11-f218-50d7-93a8-a6af411a945d"
version = "4.0.1+0"

[[deps.LLVMOpenMP_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "eb62a3deb62fc6d8822c0c4bef73e4412419c5d8"
uuid = "1d63c593-3942-5779-bab2-d838dc0a180e"
version = "18.1.8+0"

[[deps.LZO_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "1c602b1127f4751facb671441ca72715cc95938a"
uuid = "dd4b983a-f0e5-5f8d-a1b7-129d4a5fb1ac"
version = "2.10.3+0"

[[deps.LaTeXStrings]]
git-tree-sha1 = "dda21b8cbd6a6c40d9d02a73230f9d70fed6918c"
uuid = "b964fa9f-0449-5b57-a5c2-d3ea65f4040f"
version = "1.4.0"

[[deps.Latexify]]
deps = ["Format", "InteractiveUtils", "LaTeXStrings", "MacroTools", "Markdown", "OrderedCollections", "Requires"]
git-tree-sha1 = "4f34eaabe49ecb3fb0d58d6015e32fd31a733199"
uuid = "23fbe1c1-3f47-55db-b15f-69d7ec21a316"
version = "0.16.8"

    [deps.Latexify.extensions]
    DataFramesExt = "DataFrames"
    SparseArraysExt = "SparseArrays"
    SymEngineExt = "SymEngine"
    TectonicExt = "tectonic_jll"

    [deps.Latexify.weakdeps]
    DataFrames = "a93c6f00-e57d-5684-b7b6-d8193f3e46c0"
    SparseArrays = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"
    SymEngine = "123dc426-2d89-5057-bbad-38513e3affd8"
    tectonic_jll = "d7dd28d6-a5e6-559c-9131-7eb760cdacc5"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"
version = "0.6.4"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"
version = "8.6.0+0"

[[deps.LibGit2]]
deps = ["Base64", "LibGit2_jll", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"
version = "1.11.0"

[[deps.LibGit2_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll"]
uuid = "e37daf67-58a4-590a-8e99-b0245dd2ffc5"
version = "1.7.2+0"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"
version = "1.11.0+1"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"
version = "1.11.0"

[[deps.Libffi_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "c8da7e6a91781c41a863611c7e966098d783c57a"
uuid = "e9f186c6-92d2-5b65-8a66-fee21dc1b490"
version = "3.4.7+0"

[[deps.Libglvnd_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Xorg_libX11_jll", "Xorg_libXext_jll"]
git-tree-sha1 = "d36c21b9e7c172a44a10484125024495e2625ac0"
uuid = "7e76a0d4-f3c7-5321-8279-8d96eeed0f29"
version = "1.7.1+1"

[[deps.Libiconv_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "be484f5c92fad0bd8acfef35fe017900b0b73809"
uuid = "94ce4f54-9a6c-5748-9c1c-f9c7231a4531"
version = "1.18.0+0"

[[deps.Libmount_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "a31572773ac1b745e0343fe5e2c8ddda7a37e997"
uuid = "4b2f31a3-9ecc-558c-b454-b3730dcb73e9"
version = "2.41.0+0"

[[deps.Libtiff_jll]]
deps = ["Artifacts", "JLLWrappers", "JpegTurbo_jll", "LERC_jll", "Libdl", "XZ_jll", "Zlib_jll", "Zstd_jll"]
git-tree-sha1 = "4ab7581296671007fc33f07a721631b8855f4b1d"
uuid = "89763e89-9b03-5906-acba-b20f662cd828"
version = "4.7.1+0"

[[deps.Libuuid_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "321ccef73a96ba828cd51f2ab5b9f917fa73945a"
uuid = "38a345b3-de98-5d2b-a5d3-14cd9215e700"
version = "2.41.0+0"

[[deps.LinearAlgebra]]
deps = ["Libdl", "OpenBLAS_jll", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
version = "1.11.0"

[[deps.LogExpFunctions]]
deps = ["DocStringExtensions", "IrrationalConstants", "LinearAlgebra"]
git-tree-sha1 = "13ca9e2586b89836fd20cccf56e57e2b9ae7f38f"
uuid = "2ab3a3ac-af41-5b50-aa03-7779005ae688"
version = "0.3.29"

    [deps.LogExpFunctions.extensions]
    LogExpFunctionsChainRulesCoreExt = "ChainRulesCore"
    LogExpFunctionsChangesOfVariablesExt = "ChangesOfVariables"
    LogExpFunctionsInverseFunctionsExt = "InverseFunctions"

    [deps.LogExpFunctions.weakdeps]
    ChainRulesCore = "d360d2e6-b24c-11e9-a2a3-2a2ae2dbcce4"
    ChangesOfVariables = "9e997f8a-9a97-42d5-a9f1-ce6bfc15e2c0"
    InverseFunctions = "3587e190-3f89-42d0-90ee-14403ec27112"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"
version = "1.11.0"

[[deps.LoggingExtras]]
deps = ["Dates", "Logging"]
git-tree-sha1 = "f02b56007b064fbfddb4c9cd60161b6dd0f40df3"
uuid = "e6f89c97-d47a-5376-807f-9c37f3926c36"
version = "1.1.0"

[[deps.MIMEs]]
git-tree-sha1 = "c64d943587f7187e751162b3b84445bbbd79f691"
uuid = "6c6e2e6c-3030-632d-7369-2d6c69616d65"
version = "1.1.0"

[[deps.MacroTools]]
git-tree-sha1 = "1e0228a030642014fe5cfe68c2c0a818f9e3f522"
uuid = "1914dd2f-81c6-5fcd-8719-6d5c9610ff09"
version = "0.5.16"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"
version = "1.11.0"

[[deps.MbedTLS]]
deps = ["Dates", "MbedTLS_jll", "MozillaCACerts_jll", "NetworkOptions", "Random", "Sockets"]
git-tree-sha1 = "c067a280ddc25f196b5e7df3877c6b226d390aaf"
uuid = "739be429-bea8-5141-9913-cc70e7f3736d"
version = "1.1.9"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"
version = "2.28.6+0"

[[deps.Measures]]
git-tree-sha1 = "c13304c81eec1ed3af7fc20e75fb6b26092a1102"
uuid = "442fdcdd-2543-5da2-b0f3-8c86c306513e"
version = "0.3.2"

[[deps.Missings]]
deps = ["DataAPI"]
git-tree-sha1 = "ec4f7fbeab05d7747bdf98eb74d130a2a2ed298d"
uuid = "e1d29d7a-bbdc-5cf2-9ac0-f12de2c33e28"
version = "1.2.0"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"
version = "1.11.0"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"
version = "2023.12.12"

[[deps.NaNMath]]
deps = ["OpenLibm_jll"]
git-tree-sha1 = "9b8215b1ee9e78a293f99797cd31375471b2bcae"
uuid = "77ba4419-2d1f-58cd-9bb1-8ffee604a2e3"
version = "1.1.3"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"
version = "1.2.0"

[[deps.Ogg_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "b6aa4566bb7ae78498a5e68943863fa8b5231b59"
uuid = "e7412a2a-1a6e-54c0-be00-318e2571c051"
version = "1.3.6+0"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.27+1"

[[deps.OpenLibm_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "05823500-19ac-5b8b-9628-191a04bc5112"
version = "0.8.5+0"

[[deps.OpenSSL]]
deps = ["BitFlags", "Dates", "MozillaCACerts_jll", "OpenSSL_jll", "Sockets"]
git-tree-sha1 = "f1a7e086c677df53e064e0fdd2c9d0b0833e3f6e"
uuid = "4d8831e6-92b7-49fb-bdf8-b643e874388c"
version = "1.5.0"

[[deps.OpenSSL_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "87510f7292a2b21aeff97912b0898f9553cc5c2c"
uuid = "458c3c95-2e84-50aa-8efc-19380b2a3a95"
version = "3.5.1+0"

[[deps.Opus_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "c392fc5dd032381919e3b22dd32d6443760ce7ea"
uuid = "91d4177d-7536-5919-b921-800302f37372"
version = "1.5.2+0"

[[deps.OrderedCollections]]
git-tree-sha1 = "05868e21324cede2207c6f0f466b4bfef6d5e7ee"
uuid = "bac558e1-5e72-5ebc-8fee-abe8a469f55d"
version = "1.8.1"

[[deps.PCRE2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "efcefdf7-47ab-520b-bdef-62a2eaa19f15"
version = "10.42.0+1"

[[deps.Pango_jll]]
deps = ["Artifacts", "Cairo_jll", "Fontconfig_jll", "FreeType2_jll", "FriBidi_jll", "Glib_jll", "HarfBuzz_jll", "JLLWrappers", "Libdl"]
git-tree-sha1 = "275a9a6d85dc86c24d03d1837a0010226a96f540"
uuid = "36c8627f-9965-5494-a995-c6b170f724f3"
version = "1.56.3+0"

[[deps.Parsers]]
deps = ["Dates", "PrecompileTools", "UUIDs"]
git-tree-sha1 = "7d2f8f21da5db6a806faf7b9b292296da42b2810"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.8.3"

[[deps.Pixman_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "JLLWrappers", "LLVMOpenMP_jll", "Libdl"]
git-tree-sha1 = "db76b1ecd5e9715f3d043cec13b2ec93ce015d53"
uuid = "30392449-352a-5448-841d-b1acce4e97dc"
version = "0.44.2+0"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "FileWatching", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "Random", "SHA", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"
version = "1.11.0"
weakdeps = ["REPL"]

    [deps.Pkg.extensions]
    REPLExt = "REPL"

[[deps.PlotThemes]]
deps = ["PlotUtils", "Statistics"]
git-tree-sha1 = "41031ef3a1be6f5bbbf3e8073f210556daeae5ca"
uuid = "ccf2f8ad-2431-5c83-bf29-c5338b663b6a"
version = "3.3.0"

[[deps.PlotUtils]]
deps = ["ColorSchemes", "Colors", "Dates", "PrecompileTools", "Printf", "Random", "Reexport", "StableRNGs", "Statistics"]
git-tree-sha1 = "3ca9a356cd2e113c420f2c13bea19f8d3fb1cb18"
uuid = "995b91a9-d308-5afd-9ec6-746e21dbc043"
version = "1.4.3"

[[deps.Plots]]
deps = ["Base64", "Contour", "Dates", "Downloads", "FFMPEG", "FixedPointNumbers", "GR", "JLFzf", "JSON", "LaTeXStrings", "Latexify", "LinearAlgebra", "Measures", "NaNMath", "Pkg", "PlotThemes", "PlotUtils", "PrecompileTools", "Printf", "REPL", "Random", "RecipesBase", "RecipesPipeline", "Reexport", "RelocatableFolders", "Requires", "Scratch", "Showoff", "SparseArrays", "Statistics", "StatsBase", "TOML", "UUIDs", "UnicodeFun", "UnitfulLatexify", "Unzip"]
git-tree-sha1 = "28ea788b78009c695eb0d637587c81d26bdf0e36"
uuid = "91a5bcdd-55d7-5caf-9e0b-520d859cae80"
version = "1.40.14"

    [deps.Plots.extensions]
    FileIOExt = "FileIO"
    GeometryBasicsExt = "GeometryBasics"
    IJuliaExt = "IJulia"
    ImageInTerminalExt = "ImageInTerminal"
    UnitfulExt = "Unitful"

    [deps.Plots.weakdeps]
    FileIO = "5789e2e9-d7fb-5bc7-8068-2c6fae9b9549"
    GeometryBasics = "5c1252a2-5f33-56bf-86c9-59e7332b4326"
    IJulia = "7073ff75-c697-5162-941a-fcdaad2a7d2a"
    ImageInTerminal = "d8c32880-2388-543b-8c61-d9f865259254"
    Unitful = "1986cc42-f94f-5a68-af5c-568840ba703d"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "Downloads", "FixedPointNumbers", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "MIMEs", "Markdown", "Random", "Reexport", "URIs", "UUIDs"]
git-tree-sha1 = "ec9e63bd098c50e4ad28e7cb95ca7a4860603298"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.68"

[[deps.PrecompileTools]]
deps = ["Preferences"]
git-tree-sha1 = "5aa36f7049a63a1528fe8f7c3f2113413ffd4e1f"
uuid = "aea7be01-6a6a-4083-8856-8a6e6704d82a"
version = "1.2.1"

[[deps.Preferences]]
deps = ["TOML"]
git-tree-sha1 = "9306f6085165d270f7e3db02af26a400d580f5c6"
uuid = "21216c6a-2e73-6563-6e65-726566657250"
version = "1.4.3"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"
version = "1.11.0"

[[deps.PtrArrays]]
git-tree-sha1 = "1d36ef11a9aaf1e8b74dacc6a731dd1de8fd493d"
uuid = "43287f4e-b6f4-7ad1-bb20-aadabca52c3d"
version = "1.3.0"

[[deps.Qt6Base_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Fontconfig_jll", "Glib_jll", "JLLWrappers", "Libdl", "Libglvnd_jll", "OpenSSL_jll", "Vulkan_Loader_jll", "Xorg_libSM_jll", "Xorg_libXext_jll", "Xorg_libXrender_jll", "Xorg_libxcb_jll", "Xorg_xcb_util_cursor_jll", "Xorg_xcb_util_image_jll", "Xorg_xcb_util_keysyms_jll", "Xorg_xcb_util_renderutil_jll", "Xorg_xcb_util_wm_jll", "Zlib_jll", "libinput_jll", "xkbcommon_jll"]
git-tree-sha1 = "eb38d376097f47316fe089fc62cb7c6d85383a52"
uuid = "c0090381-4147-56d7-9ebc-da0b1113ec56"
version = "6.8.2+1"

[[deps.Qt6Declarative_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Qt6Base_jll", "Qt6ShaderTools_jll"]
git-tree-sha1 = "da7adf145cce0d44e892626e647f9dcbe9cb3e10"
uuid = "629bc702-f1f5-5709-abd5-49b8460ea067"
version = "6.8.2+1"

[[deps.Qt6ShaderTools_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Qt6Base_jll"]
git-tree-sha1 = "9eca9fc3fe515d619ce004c83c31ffd3f85c7ccf"
uuid = "ce943373-25bb-56aa-8eca-768745ed7b5a"
version = "6.8.2+1"

[[deps.Qt6Wayland_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Qt6Base_jll", "Qt6Declarative_jll"]
git-tree-sha1 = "2766344a35a1a5ec1147305c4b343055d7c22c90"
uuid = "e99dba38-086e-5de3-a5b1-6e4c66e897c3"
version = "6.8.2+0"

[[deps.REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "StyledStrings", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"
version = "1.11.0"

[[deps.Random]]
deps = ["SHA"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"
version = "1.11.0"

[[deps.RecipesBase]]
deps = ["PrecompileTools"]
git-tree-sha1 = "5c3d09cc4f31f5fc6af001c250bf1278733100ff"
uuid = "3cdcf5f2-1ef4-517c-9805-6587b60abb01"
version = "1.3.4"

[[deps.RecipesPipeline]]
deps = ["Dates", "NaNMath", "PlotUtils", "PrecompileTools", "RecipesBase"]
git-tree-sha1 = "45cf9fd0ca5839d06ef333c8201714e888486342"
uuid = "01d81517-befc-4cb6-b9ec-a95719d0359c"
version = "0.6.12"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.RelocatableFolders]]
deps = ["SHA", "Scratch"]
git-tree-sha1 = "ffdaf70d81cf6ff22c2b6e733c900c3321cab864"
uuid = "05181044-ff0b-4ac5-8273-598c1e38db00"
version = "1.0.1"

[[deps.Requires]]
deps = ["UUIDs"]
git-tree-sha1 = "62389eeff14780bfe55195b7204c0d8738436d64"
uuid = "ae029012-a4dd-5104-9daa-d747884805df"
version = "1.3.1"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.Scratch]]
deps = ["Dates"]
git-tree-sha1 = "9b81b8393e50b7d4e6d0a9f14e192294d3b7c109"
uuid = "6c6a2e73-6563-6170-7368-637461726353"
version = "1.3.0"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"
version = "1.11.0"

[[deps.Showoff]]
deps = ["Dates", "Grisu"]
git-tree-sha1 = "91eddf657aca81df9ae6ceb20b959ae5653ad1de"
uuid = "992d4aef-0814-514b-bc4d-f2e9a6c4116f"
version = "1.0.3"

[[deps.SimpleBufferStream]]
git-tree-sha1 = "f305871d2f381d21527c770d4788c06c097c9bc1"
uuid = "777ac1f9-54b0-4bf8-805c-2214025038e7"
version = "1.2.0"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"
version = "1.11.0"

[[deps.SortingAlgorithms]]
deps = ["DataStructures"]
git-tree-sha1 = "66e0a8e672a0bdfca2c3f5937efb8538b9ddc085"
uuid = "a2af1166-a08f-5f64-846c-94a0d3cef48c"
version = "1.2.1"

[[deps.SparseArrays]]
deps = ["Libdl", "LinearAlgebra", "Random", "Serialization", "SuiteSparse_jll"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"
version = "1.11.0"

[[deps.StableRNGs]]
deps = ["Random"]
git-tree-sha1 = "95af145932c2ed859b63329952ce8d633719f091"
uuid = "860ef19b-820b-49d6-a774-d7a799459cd3"
version = "1.0.3"

[[deps.Statistics]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "ae3bb1eb3bba077cd276bc5cfc337cc65c3075c0"
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"
version = "1.11.1"
weakdeps = ["SparseArrays"]

    [deps.Statistics.extensions]
    SparseArraysExt = ["SparseArrays"]

[[deps.StatsAPI]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "9d72a13a3f4dd3795a195ac5a44d7d6ff5f552ff"
uuid = "82ae8749-77ed-4fe6-ae5f-f523153014b0"
version = "1.7.1"

[[deps.StatsBase]]
deps = ["AliasTables", "DataAPI", "DataStructures", "LinearAlgebra", "LogExpFunctions", "Missings", "Printf", "Random", "SortingAlgorithms", "SparseArrays", "Statistics", "StatsAPI"]
git-tree-sha1 = "b81c5035922cc89c2d9523afc6c54be512411466"
uuid = "2913bbd2-ae8a-5f71-8c99-4fb6c76f3a91"
version = "0.34.5"

[[deps.StyledStrings]]
uuid = "f489334b-da3d-4c2e-b8f0-e476e12c162b"
version = "1.11.0"

[[deps.SuiteSparse_jll]]
deps = ["Artifacts", "Libdl", "libblastrampoline_jll"]
uuid = "bea87d4a-7f5b-5778-9afe-8cc45184846c"
version = "7.7.0+0"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"
version = "1.0.3"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"
version = "1.10.0"

[[deps.TensorCore]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "1feb45f88d133a655e001435632f019a9a1bcdb6"
uuid = "62fd8b95-f654-4bbd-a8a5-9c27f68ccd50"
version = "0.1.1"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"
version = "1.11.0"

[[deps.TranscodingStreams]]
git-tree-sha1 = "0c45878dcfdcfa8480052b6ab162cdd138781742"
uuid = "3bb67fe8-82b1-5028-8e26-92a6c54297fa"
version = "0.11.3"

[[deps.Tricks]]
git-tree-sha1 = "6cae795a5a9313bbb4f60683f7263318fc7d1505"
uuid = "410a4b4d-49e4-4fbc-ab6d-cb71b17b3775"
version = "0.1.10"

[[deps.URIs]]
git-tree-sha1 = "bef26fb046d031353ef97a82e3fdb6afe7f21b1a"
uuid = "5c2747f8-b7ea-4ff2-ba2e-563bfd36b1d4"
version = "1.6.1"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"
version = "1.11.0"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"
version = "1.11.0"

[[deps.UnicodeFun]]
deps = ["REPL"]
git-tree-sha1 = "53915e50200959667e78a92a418594b428dffddf"
uuid = "1cfade01-22cf-5700-b092-accc4b62d6e1"
version = "0.4.1"

[[deps.Unitful]]
deps = ["Dates", "LinearAlgebra", "Random"]
git-tree-sha1 = "d2282232f8a4d71f79e85dc4dd45e5b12a6297fb"
uuid = "1986cc42-f94f-5a68-af5c-568840ba703d"
version = "1.23.1"

    [deps.Unitful.extensions]
    ConstructionBaseUnitfulExt = "ConstructionBase"
    ForwardDiffExt = "ForwardDiff"
    InverseFunctionsUnitfulExt = "InverseFunctions"
    PrintfExt = "Printf"

    [deps.Unitful.weakdeps]
    ConstructionBase = "187b0558-2788-49d3-abe0-74a17ed4e7c9"
    ForwardDiff = "f6369f11-7733-5829-9624-2563aa707210"
    InverseFunctions = "3587e190-3f89-42d0-90ee-14403ec27112"
    Printf = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.UnitfulLatexify]]
deps = ["LaTeXStrings", "Latexify", "Unitful"]
git-tree-sha1 = "af305cc62419f9bd61b6644d19170a4d258c7967"
uuid = "45397f5d-5981-4c77-b2b3-fc36d6e9b728"
version = "1.7.0"

[[deps.Unzip]]
git-tree-sha1 = "ca0969166a028236229f63514992fc073799bb78"
uuid = "41fe7b60-77ed-43a1-b4f0-825fd5a5650d"
version = "0.2.0"

[[deps.Vulkan_Loader_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Wayland_jll", "Xorg_libX11_jll", "Xorg_libXrandr_jll", "xkbcommon_jll"]
git-tree-sha1 = "2f0486047a07670caad3a81a075d2e518acc5c59"
uuid = "a44049a8-05dd-5a78-86c9-5fde0876e88c"
version = "1.3.243+0"

[[deps.Wayland_jll]]
deps = ["Artifacts", "EpollShim_jll", "Expat_jll", "JLLWrappers", "Libdl", "Libffi_jll", "XML2_jll"]
git-tree-sha1 = "9300077d83c9eccfcac6a18b442d857d7e4f1684"
uuid = "a2964d1f-97da-50d4-b82a-358c7fce9d89"
version = "1.23.1+2"

[[deps.XML2_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Libiconv_jll", "Zlib_jll"]
git-tree-sha1 = "b8b243e47228b4a3877f1dd6aee0c5d56db7fcf4"
uuid = "02c8fc9c-b97f-50b9-bbe4-9be30ff0a78a"
version = "2.13.6+1"

[[deps.XZ_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "fee71455b0aaa3440dfdd54a9a36ccef829be7d4"
uuid = "ffd25f8a-64ca-5728-b0f7-c24cf3aae800"
version = "5.8.1+0"

[[deps.Xorg_libICE_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "a3ea76ee3f4facd7a64684f9af25310825ee3668"
uuid = "f67eecfb-183a-506d-b269-f58e52b52d7c"
version = "1.1.2+0"

[[deps.Xorg_libSM_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Xorg_libICE_jll"]
git-tree-sha1 = "9c7ad99c629a44f81e7799eb05ec2746abb5d588"
uuid = "c834827a-8449-5923-a945-d239c165b7dd"
version = "1.2.6+0"

[[deps.Xorg_libX11_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Xorg_libxcb_jll", "Xorg_xtrans_jll"]
git-tree-sha1 = "b5899b25d17bf1889d25906fb9deed5da0c15b3b"
uuid = "4f6342f7-b3d2-589e-9d20-edeb45f2b2bc"
version = "1.8.12+0"

[[deps.Xorg_libXau_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "aa1261ebbac3ccc8d16558ae6799524c450ed16b"
uuid = "0c0b7dd1-d40b-584c-a123-a41640f87eec"
version = "1.0.13+0"

[[deps.Xorg_libXcursor_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Xorg_libXfixes_jll", "Xorg_libXrender_jll"]
git-tree-sha1 = "6c74ca84bbabc18c4547014765d194ff0b4dc9da"
uuid = "935fb764-8cf2-53bf-bb30-45bb1f8bf724"
version = "1.2.4+0"

[[deps.Xorg_libXdmcp_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "52858d64353db33a56e13c341d7bf44cd0d7b309"
uuid = "a3789734-cfe1-5b06-b2d0-1dd0d9d62d05"
version = "1.1.6+0"

[[deps.Xorg_libXext_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Xorg_libX11_jll"]
git-tree-sha1 = "a4c0ee07ad36bf8bbce1c3bb52d21fb1e0b987fb"
uuid = "1082639a-0dae-5f34-9b06-72781eeb8cb3"
version = "1.3.7+0"

[[deps.Xorg_libXfixes_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Xorg_libX11_jll"]
git-tree-sha1 = "9caba99d38404b285db8801d5c45ef4f4f425a6d"
uuid = "d091e8ba-531a-589c-9de9-94069b037ed8"
version = "6.0.1+0"

[[deps.Xorg_libXi_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Xorg_libXext_jll", "Xorg_libXfixes_jll"]
git-tree-sha1 = "a376af5c7ae60d29825164db40787f15c80c7c54"
uuid = "a51aa0fd-4e3c-5386-b890-e753decda492"
version = "1.8.3+0"

[[deps.Xorg_libXinerama_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Xorg_libXext_jll"]
git-tree-sha1 = "a5bc75478d323358a90dc36766f3c99ba7feb024"
uuid = "d1454406-59df-5ea1-beac-c340f2130bc3"
version = "1.1.6+0"

[[deps.Xorg_libXrandr_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Xorg_libXext_jll", "Xorg_libXrender_jll"]
git-tree-sha1 = "aff463c82a773cb86061bce8d53a0d976854923e"
uuid = "ec84b674-ba8e-5d96-8ba1-2a689ba10484"
version = "1.5.5+0"

[[deps.Xorg_libXrender_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Xorg_libX11_jll"]
git-tree-sha1 = "7ed9347888fac59a618302ee38216dd0379c480d"
uuid = "ea2f1a96-1ddc-540d-b46f-429655e07cfa"
version = "0.9.12+0"

[[deps.Xorg_libxcb_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Xorg_libXau_jll", "Xorg_libXdmcp_jll"]
git-tree-sha1 = "bfcaf7ec088eaba362093393fe11aa141fa15422"
uuid = "c7cfdc94-dc32-55de-ac96-5a1b8d977c5b"
version = "1.17.1+0"

[[deps.Xorg_libxkbfile_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Xorg_libX11_jll"]
git-tree-sha1 = "e3150c7400c41e207012b41659591f083f3ef795"
uuid = "cc61e674-0454-545c-8b26-ed2c68acab7a"
version = "1.1.3+0"

[[deps.Xorg_xcb_util_cursor_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Xorg_xcb_util_image_jll", "Xorg_xcb_util_jll", "Xorg_xcb_util_renderutil_jll"]
git-tree-sha1 = "c5bf2dad6a03dfef57ea0a170a1fe493601603f2"
uuid = "e920d4aa-a673-5f3a-b3d7-f755a4d47c43"
version = "0.1.5+0"

[[deps.Xorg_xcb_util_image_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Xorg_xcb_util_jll"]
git-tree-sha1 = "f4fc02e384b74418679983a97385644b67e1263b"
uuid = "12413925-8142-5f55-bb0e-6d7ca50bb09b"
version = "0.4.1+0"

[[deps.Xorg_xcb_util_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Xorg_libxcb_jll"]
git-tree-sha1 = "68da27247e7d8d8dafd1fcf0c3654ad6506f5f97"
uuid = "2def613f-5ad1-5310-b15b-b15d46f528f5"
version = "0.4.1+0"

[[deps.Xorg_xcb_util_keysyms_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Xorg_xcb_util_jll"]
git-tree-sha1 = "44ec54b0e2acd408b0fb361e1e9244c60c9c3dd4"
uuid = "975044d2-76e6-5fbe-bf08-97ce7c6574c7"
version = "0.4.1+0"

[[deps.Xorg_xcb_util_renderutil_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Xorg_xcb_util_jll"]
git-tree-sha1 = "5b0263b6d080716a02544c55fdff2c8d7f9a16a0"
uuid = "0d47668e-0667-5a69-a72c-f761630bfb7e"
version = "0.3.10+0"

[[deps.Xorg_xcb_util_wm_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Xorg_xcb_util_jll"]
git-tree-sha1 = "f233c83cad1fa0e70b7771e0e21b061a116f2763"
uuid = "c22f9ab0-d5fe-5066-847c-f4bb1cd4e361"
version = "0.4.2+0"

[[deps.Xorg_xkbcomp_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Xorg_libxkbfile_jll"]
git-tree-sha1 = "801a858fc9fb90c11ffddee1801bb06a738bda9b"
uuid = "35661453-b289-5fab-8a00-3d9160c6a3a4"
version = "1.4.7+0"

[[deps.Xorg_xkeyboard_config_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Xorg_xkbcomp_jll"]
git-tree-sha1 = "00af7ebdc563c9217ecc67776d1bbf037dbcebf4"
uuid = "33bec58e-1273-512f-9401-5d533626f822"
version = "2.44.0+0"

[[deps.Xorg_xtrans_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "a63799ff68005991f9d9491b6e95bd3478d783cb"
uuid = "c5fb5394-a638-5e4d-96e5-b29de1b5cf10"
version = "1.6.0+0"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"
version = "1.2.13+1"

[[deps.Zstd_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "446b23e73536f84e8037f5dce465e92275f6a308"
uuid = "3161d3a3-bdf6-5164-811a-617609db77b4"
version = "1.5.7+1"

[[deps.eudev_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "c3b0e6196d50eab0c5ed34021aaa0bb463489510"
uuid = "35ca27e7-8b34-5b7f-bca9-bdc33f59eb06"
version = "3.2.14+0"

[[deps.fzf_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "b6a34e0e0960190ac2a4363a1bd003504772d631"
uuid = "214eeab7-80f7-51ab-84ad-2988db7cef09"
version = "0.61.1+0"

[[deps.libaom_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "522c1df09d05a71785765d19c9524661234738e9"
uuid = "a4ae2306-e953-59d6-aa16-d00cac43593b"
version = "3.11.0+0"

[[deps.libass_jll]]
deps = ["Artifacts", "Bzip2_jll", "FreeType2_jll", "FriBidi_jll", "HarfBuzz_jll", "JLLWrappers", "Libdl", "Zlib_jll"]
git-tree-sha1 = "e17c115d55c5fbb7e52ebedb427a0dca79d4484e"
uuid = "0ac62f75-1d6f-5e53-bd7c-93b484bb37c0"
version = "0.15.2+0"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.11.0+0"

[[deps.libdecor_jll]]
deps = ["Artifacts", "Dbus_jll", "JLLWrappers", "Libdl", "Libglvnd_jll", "Pango_jll", "Wayland_jll", "xkbcommon_jll"]
git-tree-sha1 = "9bf7903af251d2050b467f76bdbe57ce541f7f4f"
uuid = "1183f4f0-6f2a-5f1a-908b-139f9cdfea6f"
version = "0.2.2+0"

[[deps.libevdev_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "56d643b57b188d30cccc25e331d416d3d358e557"
uuid = "2db6ffa8-e38f-5e21-84af-90c45d0032cc"
version = "1.13.4+0"

[[deps.libfdk_aac_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "646634dd19587a56ee2f1199563ec056c5f228df"
uuid = "f638f0a6-7fb0-5443-88ba-1cc74229b280"
version = "2.0.4+0"

[[deps.libinput_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "eudev_jll", "libevdev_jll", "mtdev_jll"]
git-tree-sha1 = "91d05d7f4a9f67205bd6cf395e488009fe85b499"
uuid = "36db933b-70db-51c0-b978-0f229ee0e533"
version = "1.28.1+0"

[[deps.libpng_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Zlib_jll"]
git-tree-sha1 = "07b6a107d926093898e82b3b1db657ebe33134ec"
uuid = "b53b4c65-9356-5827-b1ea-8c7a1a84506f"
version = "1.6.50+0"

[[deps.libvorbis_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Ogg_jll"]
git-tree-sha1 = "11e1772e7f3cc987e9d3de991dd4f6b2602663a5"
uuid = "f27f6e37-5d2b-51aa-960f-b287f2bc3b7a"
version = "1.3.8+0"

[[deps.mtdev_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "b4d631fd51f2e9cdd93724ae25b2efc198b059b1"
uuid = "009596ad-96f7-51b1-9f1b-5ce2d5e8a71e"
version = "1.1.7+0"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"
version = "1.59.0+0"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
version = "17.4.0+2"

[[deps.x264_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "4fea590b89e6ec504593146bf8b988b2c00922b2"
uuid = "1270edf5-f2f9-52d2-97e9-ab00b5d0237a"
version = "2021.5.5+0"

[[deps.x265_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "ee567a171cce03570d77ad3a43e90218e38937a9"
uuid = "dfaa095f-4041-5dcd-9319-2fabd8486b76"
version = "3.5.0+0"

[[deps.xkbcommon_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Xorg_libxcb_jll", "Xorg_xkeyboard_config_jll"]
git-tree-sha1 = "fbf139bce07a534df0e699dbb5f5cc9346f95cc1"
uuid = "d8fb68d0-12a3-5cfd-a85a-d49703b185fd"
version = "1.9.2+0"
"""

# ╔═╡ Cell order:
# ╟─f089cbaa-4ab9-11eb-09d1-05f49911487f
# ╠═9a1cca86-0fff-4f8a-a033-8cf6db337503
# ╠═e97e5984-4ab9-11eb-3efb-9f54c6c307dd
# ╟─fd21a9fa-4ab9-11eb-05e9-0d0963826b9f
# ╟─e579d5f5-e9fa-4949-9000-7f383abde4f1
# ╠═34055ff7-7ab5-4f08-8551-4cb64b8b7931
# ╠═0a32ab1d-8a0e-40c0-8372-c0b6c5c9d431
# ╠═266779f6-8735-429d-b9d8-1782252a4337
# ╟─33e0b24e-3bfd-4cda-b1da-7d05c47d9cac
# ╟─67bb736c-7c82-4bc3-a9b1-185c72b7a1b6
# ╟─0a45a059-4ccf-436f-94ad-0afb7b8e869b
# ╟─8d12f558-0f45-4380-b083-5dc9ba2239dd
# ╠═dc10b61c-20b2-4f5c-9c33-964e00fa218f
# ╟─4d209dd9-083c-404c-9f9f-3709162b9656
# ╟─578d0fad-fb95-4729-9c7d-e4a23fab03c8
# ╟─d4982d9f-09f3-4767-89b4-545bd6b3d44a
# ╟─7cfadeed-ac22-4f46-81cd-cf72005e49b3
# ╟─23d3c9cc-4abd-11eb-0cb0-21673effee6c
# ╟─62c3b076-4ab7-11eb-0cf2-25cdf7d2540d
# ╠═7bf5bdbe-4ab7-11eb-0d4b-c116e02cb9d9
# ╠═83306610-4ab7-11eb-3eb5-55a465e0abb9
# ╠═3fa0a15c-5008-11eb-13b5-a91b02c1eb2d
# ╠═83311b8a-4ab7-11eb-0067-e57ceabdfe9d
# ╠═833dbc66-4ab7-11eb-216d-f9900f95deb8
# ╠═8342c042-4ab7-11eb-2136-497fc9e1b9c4
# ╠═834d4cbc-4ab7-11eb-1f1a-df05b0c00d66
# ╠═8360ffac-4ab7-11eb-1162-f7a536eb0765
# ╠═8365cb3e-4ab7-11eb-05c0-85f51cc9b018
# ╠═8370eaf0-4ab7-11eb-1cd3-dfeec9341c4b
# ╠═50bb93e6-5a6c-11eb-0a6c-d5d749857771
# ╠═8383f104-4ab7-11eb-38a5-33e59b1591f6
# ╠═8387934a-4ab7-11eb-11b2-471b08d87b31
# ╠═8bab2e50-5a6c-11eb-3c5f-a9f811483814
# ╠═9d2708ca-5a6c-11eb-1c0f-473f0e2b5363
# ╟─8c14cb9a-4ab7-11eb-0666-b1d4aca00f97
# ╠═93b5a126-4ab7-11eb-2f67-290ed869d44a
# ╟─353efeea-6492-11eb-3d09-353d4dae491a
# ╠═92f57780-6492-11eb-1264-bbef04a8ae99
# ╠═a17ebeba-6492-11eb-07ba-f516a990affc
# ╟─3055711a-6493-11eb-252b-7f5d99115551
# ╟─f474d864-28b9-4299-b207-dca426554c46
# ╠═c6ae05d2-7e8e-4683-b3e2-fe79d5e24e2f
# ╠═9ce5dfc4-5715-4037-bf36-9e5f68c3273e
# ╠═962ae6d2-4ab7-11eb-14a2-c76a2221f544
# ╟─98d48302-4ab7-11eb-2397-710d0ae425f7
# ╟─acb3b57a-661c-11eb-2c6a-99793a47ff29
# ╠═cee8a766-4ab7-11eb-2bc7-898df2c9b1ff
# ╟─e2c5b558-4ab7-11eb-09be-b354fc56cc6e
# ╠═ec754104-4ab7-11eb-2a44-557e4304dd43
# ╟─f23a2d2a-4ab7-11eb-1e26-bb2d1d19829f
# ╠═fa836e88-4ab7-11eb-0ba6-5fc7372f32ab
# ╟─0138ef46-4ab8-11eb-1813-55594927d661
# ╠═0b73d66a-4ab8-11eb-06e9-bbe95285a69f
# ╟─6b6eb954-4ab8-11eb-17f9-ef3445d359a3
# ╠═94e3eb74-4ab8-11eb-1b27-573dd2f02b1d
# ╟─abf00a78-4ab8-11eb-1063-1bf4905ca250
# ╠═be220a48-4ab8-11eb-1cd4-db99cd9db066
# ╠═cadaf948-4ab8-11eb-3110-259768055e85
# ╠═cadb506e-4ab8-11eb-23ed-2d5f88fd30b0
# ╠═caf56346-4ab8-11eb-38f5-41336c5b45a7
# ╟─046133a8-4ab9-11eb-0591-9de27d85bbca
# ╠═0c8bc7f0-4ab9-11eb-1c73-b7ec002c4155
# ╠═0f8a311e-4ab9-11eb-1b64-cd62b65c49bf
# ╠═0f8a5e94-4ab9-11eb-170b-cfec74d6ebbc
# ╠═0f96fdd6-4ab9-11eb-0e33-2719394a66ba
# ╟─1f255304-4ab9-11eb-34f1-270fd5a95256
# ╠═34a18900-4ab9-11eb-17a0-1168dd9d06f9
# ╟─39a0a328-4ab9-11eb-0f37-6717095b56aa
# ╠═4749f268-4ab9-11eb-15a7-579437e0bd20
# ╟─5a9bbbe6-4aba-11eb-3652-43eb7891f437
# ╟─c297d307-a640-4d86-aa0b-a149fe741bac
# ╟─a69ead46-4abc-11eb-3d1d-eb1c73f65150
# ╠═b482b998-4abc-11eb-36da-379010485bfa
# ╟─07b103ae-4abd-11eb-311b-278d1e033642
# ╠═15f8b7fe-4abd-11eb-2777-8fc8bf9d342e
# ╠═efae58fa-5008-11eb-32fe-c3ae588d14f2
# ╠═18f99e46-4abd-11eb-20a8-859cb1b12fe3
# ╟─3a7954da-4abd-11eb-3c5b-858054b4d06b
# ╟─8b17d538-4abd-11eb-0543-ab95c9548d6f
# ╠═29d34e64-5009-11eb-3301-f729150e17b2
# ╠═91a9d1a0-4abd-11eb-3337-71983f32b6ae
# ╠═942d4202-4abd-11eb-1f01-dfe3df40a5b7
# ╠═942dae0e-4abd-11eb-20a2-37d9c9882ba8
# ╠═943d9850-4abd-11eb-1cbc-a1bef988c910
# ╠═943de2ce-4abd-11eb-2410-31382ae9c74f
# ╠═9460c03c-4abd-11eb-0d60-4d8aeb5b0c1d
# ╠═946161f4-4abd-11eb-0ec5-df225dc140d0
# ╠═947d143a-4abd-11eb-067d-dff955c90407
# ╠═947fea8e-4abd-11eb-1d6a-2bc540f7a50e
# ╠═948eff10-4abd-11eb-36d0-5183e882a9e2
# ╠═948f5032-4abd-11eb-3d1c-7da4cb64521c
# ╠═94b520e6-4abd-11eb-3161-addf3b0e4f24
# ╠═94b78322-4abd-11eb-3006-454548efd164
# ╠═94d28c80-4abd-11eb-08c0-717207e4c682
# ╟─9fe6e1a2-4abd-11eb-0c39-458ce94265c0
# ╠═ae26ab9e-4abd-11eb-3270-33558dbdf663
# ╠═b08dc886-4abd-11eb-1807-096a7e6fd6f9
# ╠═b08e3a28-4abd-11eb-258a-a5a93b4b882c
# ╠═b0a8dfe0-4abd-11eb-167d-2fc3974c7c92
# ╠═b0a97e00-4abd-11eb-371c-e138aea17bb6
# ╠═b0ccc252-4abd-11eb-048b-4bec3750bbf1
# ╟─60b066d8-5009-11eb-3b4c-8b8fa2f4831d
# ╠═b8b7c0f6-5009-11eb-1eb7-0be723a88863
# ╟─0af7ca88-dc00-407b-af0d-bd7a99f23e92
# ╠═1c5975ec-4abe-11eb-0ff0-bfb2f03a520b
# ╟─10a31233-5de3-401b-abdd-a27908e2de9d
# ╟─1c22b880-4abf-11eb-3f18-756c1198ccad
# ╟─37086212-4abf-11eb-3ec9-7f8dae57121e
# ╠═489421d8-4abf-11eb-0d5e-fd779cc918a1
# ╟─6736dafe-4abf-11eb-1fce-0716d2b7f4a8
# ╟─20eab2a7-c3d0-469e-aac0-cd9fc6a4a758
# ╠═0c693c24-4ac0-11eb-2329-c743dcc5039d
# ╟─32c8ff60-9a35-4d40-8b54-b4805ca81885
# ╟─035a53ba-4ac1-11eb-3c34-b50a803b7b7d
# ╟─2a5fca7c-4ac0-11eb-33a3-23d972ca27b8
# ╠═3896642a-4ac0-11eb-2c7c-4f376ab82217
# ╠═3ef3faf8-4ac0-11eb-1965-fd23413e29f3
# ╟─3916f50e-661d-11eb-0829-cb3821836fdf
# ╠═4118016e-4ac0-11eb-18bf-5de326782c87
# ╠═4119fbca-4ac0-11eb-1ea9-0bdd324214c5
# ╟─5ebe25c0-661d-11eb-389b-3d81570f7cf0
# ╠═4139bf3c-4ac0-11eb-2b63-77a513149351
# ╟─a1d4127c-4ac0-11eb-116f-79c6ee58f524
# ╠═a93b28e6-4ac0-11eb-074f-a7b64f43a194
# ╠═ac35b796-4ac0-11eb-3bc5-5ff4350d5452
# ╠═b18e55ae-4ac0-11eb-1455-21b83b7c61d5
# ╟─ec4190a8-4ac0-11eb-0421-398f063775bb
# ╟─7dce10be-500c-11eb-12cf-43f6989aae91
# ╠═bafbe0ea-500c-11eb-10be-75d1738d42a2
# ╠═2033383e-500d-11eb-3aea-cdc1e90dad2c
# ╟─fdb67aba-4ac0-11eb-1d4a-c354de54baa9
# ╠═28f47a24-4ac1-11eb-271f-6b4de7311db3
# ╠═3e433ab4-4ac1-11eb-2178-53b7220fa9ab
# ╠═46112c44-4ac1-11eb-2ad8-030406c7cf67
# ╠═461489fa-4ac1-11eb-0596-1d3bedb61778
# ╟─47338c78-4ac1-11eb-04d6-35c2361eaea6
# ╠═463689b0-4ac1-11eb-1b0f-b7a239011c5c
# ╠═9eee532d-33a4-450e-befc-cc66e7a50eed
# ╟─52bfff04-4ac1-11eb-1216-25eedd9184c3
# ╠═61846dae-4ac1-11eb-389a-4fbe3f6145b1
# ╠═6321ae1a-4ac1-11eb-04cb-33e939694874
# ╟─3eda5d12-5a6e-11eb-3264-9925907c85b5
# ╟─7b874424-4ac1-11eb-2d4e-0b4607559b8f
# ╠═86defe2a-4ac1-11eb-3c01-c5e671877212
# ╠═886512de-4ac1-11eb-00e1-73292ec23277
# ╠═88678820-4ac1-11eb-272e-0df61e418900
# ╠═888dee1e-4ac1-11eb-264d-cd4a4f30f498
# ╟─8acb086c-4ac1-11eb-1715-756fde34b38f
# ╠═944e1aaa-4ac1-11eb-0e23-41b1c5d0e889
# ╠═9d4e11be-4ac1-11eb-1fa0-13f1fe60c3bc
# ╠═9d514ef6-4ac1-11eb-25fc-ffaa2dcc9b02
# ╟─a0781222-4ac1-11eb-3425-d9b9603487f3
# ╠═a6b95d62-4ac1-11eb-0c93-7fa0f6a120d5
# ╠═ab006064-4ac1-11eb-32be-6557b8d45f32
# ╟─b0603566-4ac1-11eb-17bc-3b63cd2aa1e9
# ╟─14bb078b-51b7-48d4-82cd-89c8ed36e444
# ╟─a647ec42-1b3c-4280-958a-e2a96cd3d103
# ╠═beafce06-4ac1-11eb-2431-1ffeba45716b
# ╟─ec487488-4ac1-11eb-1be3-a93e41f78bf3
# ╠═f88fee6c-4ac1-11eb-1671-43493122f061
# ╠═fa759f92-4ac1-11eb-0d72-1f9d6d38a831
# ╠═fa7ba458-4ac1-11eb-2ca1-59ff3c032b26
# ╠═fa9b3266-4ac1-11eb-153a-87c6a1124890
# ╠═fa9d43b2-4ac1-11eb-33fc-a37503cedabf
# ╟─0dbe0c34-500e-11eb-2633-67d8dc6b24c8
# ╠═900da226-500e-11eb-3f1c-5582ed0cf749
# ╠═b24bee9a-500e-11eb-2130-45b78bbebdec
# ╟─c8cf6520-500e-11eb-2dd3-4507a3994a83
# ╠═19402512-500f-11eb-3ea7-c3d1c52025d6
# ╟─6dc0eaae-500f-11eb-3051-37d870366201
# ╠═8b57c506-500f-11eb-3114-55785eb593a7
# ╠═cfd8a346-d3fe-49bb-a2e4-10d7c6047436
# ╟─fd171e0e-4ac1-11eb-09ea-337d17500149
# ╠═10e71260-4ac2-11eb-1069-55613ee7df0a
# ╠═1c0230f8-4ac2-11eb-32aa-e7a4b2ae9cff
# ╠═226417c2-4ac2-11eb-2914-196461e2b40e
# ╟─3daf4fa6-4ac2-11eb-0541-b98c2e97dfe4
# ╟─a777f624-4f2f-11eb-0595-432ea5115a2d
# ╟─abb7bf4e-4f2f-11eb-1dde-abf1cb0fb8b4
# ╠═b63533e8-4f2f-11eb-3811-5f43fcaa2a9e
# ╠═b730b7b8-4f2f-11eb-3216-613c6100fb9c
# ╠═b99eb16c-4f2f-11eb-0f1e-5d2b1244689f
# ╠═bc67fc50-4f2f-11eb-2209-bf35df0e8c27
# ╠═bf40274a-4f2f-11eb-0086-d3502f67161b
# ╟─c48e035c-4f2f-11eb-12c7-576aadca7511
# ╟─c8435740-4f2f-11eb-3046-3d45d5e0e805
# ╠═cacb7254-4f2f-11eb-1daa-1bc04678835c
# ╠═cc48bc9a-4f2f-11eb-134c-71bd8a944943
# ╠═d9f28c04-4f2f-11eb-0255-1965fb8f07b5
# ╠═dc1dbe90-4f2f-11eb-05ce-c1fe46ae14dd
# ╟─de48a3f6-4f2f-11eb-314b-493546c37a21
# ╟─6da71180-4ac2-11eb-1cac-410bd1cce70c
# ╠═85b96ff0-4ac2-11eb-077f-cf4aad8a3c24
# ╟─a11c2898-4ac2-11eb-24d3-6f8060b5fd65
# ╠═a686e67e-4ac2-11eb-228e-23524a3ddc59
# ╟─d50cced2-500d-11eb-2dcc-21fc50825f43
# ╟─ad156892-4ac2-11eb-3634-a3783231e5a1
# ╠═bf1385da-4ac2-11eb-3992-41abac921370
# ╟─d779956a-4ac2-11eb-39de-4b3cecace452
# ╠═c7d2a048-4ac2-11eb-3902-b7c8505096ae
# ╠═cf35b2b2-4ac2-11eb-1ae6-5d3c108210df
# ╠═d1010f88-4ac2-11eb-0fa9-0902fef0cf9f
# ╟─0e63d722-4ac3-11eb-3740-d31b47a77912
# ╟─5ab03afc-a5fe-4d89-9327-81cc24afd4e0
# ╠═3c06cb23-20a1-4def-921f-52977822f442
# ╠═d735b51a-9229-45d2-889a-e51ebc31b716
# ╠═827eae18-1d3d-4443-8d5e-2aa676f56935
# ╟─9e211fbf-4c43-439a-95ba-86b48767c053
# ╟─adb47b64-5af8-11eb-1b32-57cbe5d47200
# ╠═0cd2d0e4-59e1-11eb-112e-83ebe626f597
# ╠═de609dc8-f004-4412-aef6-82f62803ba86
# ╠═4fd2ae04-c611-48f4-8af8-5ee7f07f7914
# ╠═9bbf8541-795b-4b09-b2ac-db37fa2b8fca
# ╟─fd368fc2-2c64-463e-976e-9dd52ce80f13
# ╟─b1af96ea-5af8-11eb-0d08-f59a4c2b686c
# ╠═bf53d86c-59e1-11eb-1456-5518e1f63390
# ╟─da5537b5-88e7-4377-90c6-abbc7eaf6495
# ╠═b4118bfa-5af8-11eb-0aca-cddef8e191ee
# ╟─db78af32-b822-49dd-b085-6f51ba6b623f
# ╟─f077c390-57fe-11eb-1ad9-31110b3dac39
# ╟─5f6b3a73-9979-4fdd-b0d0-be43419c6547
# ╠═87871f34-4ad1-11eb-3903-93e3f63ea14a
# ╟─c8151b58-735c-4f16-b410-0c5c88818e6d
# ╟─e2583a06-6479-11eb-091b-8be70024930d
# ╠═1f588828-6477-11eb-0c70-557f130c6785
# ╠═4d0e1d60-6476-11eb-154e-d9cc3bf284c2
# ╠═5167ded6-6463-11eb-3279-0dd226fae82e
# ╠═c4d03faa-647d-11eb-3a84-d7b2d53e4720
# ╟─c01bb803-2255-4164-b216-23ec7310f89f
# ╠═c55ed390-647d-11eb-22d5-33fbae27a2bb
# ╠═23db2764-647e-11eb-37dd-a34db2ff0fcd
# ╠═989d0dd2-647a-11eb-3123-39786452714a
# ╠═061e4894-647b-11eb-06db-310d02463b80
# ╠═89a9ad00-6489-11eb-2a2d-bfa18af103ab
# ╟─743924b0-0b3b-48e2-9b93-961311d08022
# ╟─0507186a-647a-11eb-07cf-ebf32bdff5b0
# ╠═448ef88e-4ad2-11eb-20d6-17a51d665ef9
# ╟─15257785-52b5-4129-9e65-7fa15e83a6e3
# ╠═28c2ec4f-09ab-4d90-918f-ce19b132275e
# ╠═14d50ee8-4ad3-11eb-3b81-9138aec66207
# ╠═d251a6ae-4985-44f3-90d1-27c2acfed272
# ╟─0f095a13-8586-4da3-84ae-24c43a303776
# ╟─2bff11a1-7e39-43e5-8058-5d1496f43387
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
