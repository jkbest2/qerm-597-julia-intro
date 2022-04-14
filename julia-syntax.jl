### A Pluto.jl notebook ###
# v0.19.0

using Markdown
using InteractiveUtils

# ╔═╡ 4a9f79a2-bb44-11ec-2a33-a3a55d4483d7
md"""
### Julia Syntax (specifically some differences from R)
"""

# ╔═╡ 0b2822e1-a173-4124-84d9-33223100a4ec
md"""
##### Variables work similarly in both R and Julia:
"""

# ╔═╡ 883a1967-e709-421e-8e2b-c1e4adb90119
x = 1

# ╔═╡ 4bdfa48f-85e0-440e-b02a-fbb5990c88ae
x

# ╔═╡ df1af474-79fb-44d0-bd4f-5a5f53b932f7
y = "Hello World"

# ╔═╡ d11d4ccf-e92a-4848-a974-b34ab96bace4
y

# ╔═╡ d3d946b8-5844-45ea-b622-fbd1be0d57e7
M = 1.0

# ╔═╡ 78857486-3657-4676-ba93-d08a041d3e0e
M

# ╔═╡ 24a050f1-8110-44db-b3de-50b09d544fd8
md"""
#### Data structures:
"""

# ╔═╡ be849087-fd97-4a84-87f7-dbc400cac1f7
md"""
Dictionaries are helpful for data that is related to one another. Dictionaries are not ordered (so can't be indexed by numbers). """

# ╔═╡ 055ec2ec-9649-4aee-84d7-daa28b57d29e
myfavoritefoods = Dict("Breakfast" => "pancakes", "Lunch" => "sandwiches", "Dinner" => "Pizza")

# ╔═╡ 31baec64-7643-43b9-ab81-6ae04aecd613
#Oh no! I forgot dessert!
myfavoritefoods["Dessert"] = "ice cream"

# ╔═╡ f2d6bcc7-9516-4feb-a543-238ef24e68a7
myfavoritefoods

# ╔═╡ c6255252-8c2f-4e50-b175-02333a580684
#to remove an entry, can use the pop! function
pop!(myfavoritefoods, "Breakfast") #this will also tell us what entry we removed

# ╔═╡ d1839acc-78e2-410e-b488-aa29f286cc7f
myfavoritefoods #no longer contains breakfast

# ╔═╡ ec866c40-ade0-4ac8-bf77-3e5ccd8d6f35
#You can't index a dictionary because it is not ordered
myfavoritefoods[1]

# ╔═╡ 87db6959-3913-46ed-b7fa-1877a495d226
md"""
Tuples are ordered, but they cannot be changed once they are created. They are created using ( ) """

# ╔═╡ 9280c81d-0a12-4f1f-bfca-3f71e0f4c65b
oddnums = (1,3,5,7)

# ╔═╡ 0872b755-7723-4a77-b9bb-d08d38358695
#they are ordered so they can be indexed
oddnums[2]

# ╔═╡ 5435ff3a-3d6f-4b28-aabf-892cdd3a36b4
#but they cannot be updated

# ╔═╡ 5e4a6e05-a6c9-4763-9a3e-e6c8faa41a70
oddnums[1] = 2

# ╔═╡ 173f3091-82a6-4fc7-a94a-690d8850dfd7
md"""
Arrays are ordered and they can be changed. They are created with [ ]"""

# ╔═╡ 30b79808-3214-429d-b63f-1f0c449472d7
evennums = [2,4,6,8]

# ╔═╡ 8945a313-82f5-4d1c-a090-ef1ff83ec1a1
evennums[1]

# ╔═╡ 980b7753-be6c-4eda-ac43-5c5459d483fe
evennums[1] = 1

# ╔═╡ 8f76fafb-4cf4-4fe1-91d9-b64fd783e9dc
evennums

# ╔═╡ 809ebd3a-7bee-4567-a63e-bf07557f9a84
#to add an element to the end of my array:
push!(evennums,10)

# ╔═╡ d4a92584-a484-48e5-b282-9b6a7842e62e
# a column vector is create by using commas between the elements
mycol = [1,2,3,4]

# ╔═╡ 8075c7a9-f548-477b-8213-45040a0acfb5
#a row vector does not have commas between elements
myrow = [1 2 3 4]

# ╔═╡ dafc3637-7d35-439f-ad2c-13ed44f00302
md"""
You can create an array of arrays
"""

# ╔═╡ 965fcf73-5a7b-42e1-990b-54b06c4cec25
allthenumbers = [[1,2,3], [4,5], [6,7,8]]

# ╔═╡ 00fa11bc-f0be-4cf4-94bc-3af4c2fbc264
allthenumbers

# ╔═╡ de7c8fd5-dd56-4465-9485-5f7c034576fa
md"""
You can also create 2D, 3D arrays...."""

# ╔═╡ c1551d4d-6dc4-49b1-addd-d6f7130e709d
my2darray = [1 2 3; 4 5 6] #this creates a matrix by row

# ╔═╡ 6ceb95db-0e0b-4f24-bba4-06e21d4d1921
#here's a 2D array made with random numbers
rand(4,3)

# ╔═╡ 936bd5ad-201b-41af-b09d-c914290f3996
#or a 3D array
rand(4,3,2)

# ╔═╡ 5ad0e57a-f7d5-4a52-bc70-e0fd70479668
md"""
#### Many mathematical operations are similar to R:"""

# ╔═╡ 10cd83b3-6fb8-4a2c-89b5-43f1e97c979e
1+2+3

# ╔═╡ cffe4c28-8c20-446a-bd27-b14b053fa291
3*2/12

# ╔═╡ 973cb124-f6d2-4034-9837-7c4206bcac91
5 != 6

# ╔═╡ b84d2b04-f6b6-48b8-92c2-f4627b802334
1 +1

# ╔═╡ cb2dd919-e483-4dce-874b-a9916b811c63
1.0 + 1

# ╔═╡ 0fbf0bde-b421-4c1d-8f28-da359619d5f0
md"""
Try some your own operations here:
"""

# ╔═╡ 52215e44-4001-42ce-ab09-a638c9ee18a7


# ╔═╡ 84ef3805-6dfe-46c2-b575-8aa4482ea17e


# ╔═╡ 626c2ab4-3b60-40f5-8ea6-91aee6fc7345


# ╔═╡ 53f15123-2d6a-4eda-b2b1-459afaffaa7e
md"""
Some other useful functions include:
"""

# ╔═╡ 195ed6e9-0f41-4a97-a953-c26f10744050
isequal(4,6)

# ╔═╡ 6471da31-59e7-422f-825d-19b51a5652f4
isnan(NaN)

# ╔═╡ 2baf1a0f-afbd-4aa7-927a-08bb14590390
md"""
#### Vectorized operators look a little different than R.
You need to include a "." to tell Julia to apply the operators elementwise."""

# ╔═╡ be4dccd4-f8e0-4e8a-b7e0-2828b7ee688f
[1,2,3].^3 #each element of the vector is cubed

# ╔═╡ f1905b8b-bd1d-4e23-a79e-a7bde9e1a3ea
[1,2,3] .* [4,5,6]

# ╔═╡ a4fca9a7-c875-4c89-be42-9f9054bcb17f
#lets go back to our row and column vectors above
mycol

# ╔═╡ 81351aeb-8441-4691-91a7-40408ebe5683
myrow

# ╔═╡ feac60bc-34fa-47ca-911e-b763101e5e9d
#when we multiply them without a .
myrow*mycol 

# ╔═╡ 05751617-76a8-4e5b-9b3a-a4b9bc9b462e
#when we multiply with a .
myrow .* mycol

# ╔═╡ efd3bf10-4d7a-424e-a78c-d8ca0472e0ea
#if we try multiplying two column vectors
mycol*mycol #doesn't work because it's trying to do matrix multiplication

# ╔═╡ 7881ac9b-d0ee-48cc-9513-7e0a13911e4f
mycol .* mycol #but here it works because it's multiplying elementwise

# ╔═╡ 79bbc59f-20af-4228-9027-6bb9fb4a0ee5
md"""
#### Julia uses * for string concatenation
"""

# ╔═╡ 0b2c32ea-18d1-4244-abcd-48580ce3e754
greeting = "Hello"

# ╔═╡ ad39b73c-5949-4f97-9cdd-16d62f2fbb9f
place = "World"

# ╔═╡ 1367e640-178a-4912-82c1-8e13fca01d82
greeting * "," * place

# ╔═╡ 1f8ce052-584c-4a95-b3ce-52a048e61268
md"""
#### Creating functions in Julia
"""

# ╔═╡ d944fd66-bad7-4c65-be6a-60f0d4935a90
function myfirstfunction(x,y)
	x+y/2
end

# ╔═╡ 3869adbe-a422-40d1-9e31-c3d7e19d4ee4
myfirstfunction(4,6)

# ╔═╡ 39113dc6-e995-422f-a7a9-ddda915d246c
md"""
Function objects can be passed around like any other value"""

# ╔═╡ 288b0fd1-3ac1-431d-b9a3-4b40dbb7aeb3
expertfunction = myfirstfunction

# ╔═╡ ee67a27c-fbea-41a0-b0c7-e2d5b79571cc
expertfunction(4,6)

# ╔═╡ 3011e2e1-260c-4f83-940f-bb7b24d3ac0b
function fancyfunction(x,y)
	return x*y
	x+y
end

# ╔═╡ 8e44e4c2-e908-4232-9753-8eaea3e83b8b
fancyfunction(4,6) #when you use a return statement, it returns that value from the function, even if there are other operations in the function

# ╔═╡ 6b796084-a7d1-4edb-baff-60550c29b786
md"""
Create your own function here
"""

# ╔═╡ 668484d3-97d6-451c-ad77-93b26ff397a2


# ╔═╡ 30e41db4-997d-4da3-b794-e6b0e3729ac0


# ╔═╡ cdc90bfa-e4f5-4310-87bd-f00fa4f7ff7f
md"""
Julia will try to use your function on any input that makese sense """

# ╔═╡ 1ee163ea-15a3-4623-9a6a-714782ae64ed
function squarefunc(x)
	x^2
end

# ╔═╡ d598b274-140b-45b8-b4bd-374eef12686e
squarefunc(12) #can square a number

# ╔═╡ b607795b-d112-4492-92c9-0a3639916619
squarefunc(rand(2,2)) #this worked, because taking the square of a matrix is possible (but note it did not square elementwise, it multiplied the matrix by itself)

# ╔═╡ 0d2a3bdc-f8c0-4241-985e-ef2e1a36eedc
squarefunc("apples") #this will even work on characters, concantenating the strings

# ╔═╡ 47ae3685-0e65-4983-b0a6-c0990ec814ca
squarefunc([1,2,3]) #this does not work because the square of a column vector is not a well-defined operation 

# ╔═╡ 2157e5b5-06c5-4e17-98c8-5b684879015e
#but you can dot broadcast a function you created
squarefunc.([1,2,3])

# ╔═╡ 92940b24-fed4-423b-a7dc-bab5b1ab425b
md""" 
Functions in Julia can be mutating and non-mutating. Mutating functions use a !"""

# ╔═╡ 4c08d717-6acb-4c8d-b6ad-0ada1ef63ebc
mynums = [10,32,25]

# ╔═╡ cb271d14-e3d1-4bd8-b590-b728a3a63061
#nonmutating--does not change the structure of mynums
sort(mynums)

# ╔═╡ 0961e171-9b5e-4b42-a010-326ee21abbd0
mynums

# ╔═╡ e2fa9873-25db-423c-a0ee-a5a9ca5a0a63
#mutating--changes the vector
sort!(mynums)

# ╔═╡ 03a5bd65-cf88-4b14-a264-12f4dde3eef2
mynums

# ╔═╡ 3583ef98-069a-4569-ac6b-f18ae0058323
md"""
### Multiple Dispatch and Types 
Julia will use the arguments of a function and their types in order to decide which method to use."""

# ╔═╡ 3c974d14-cbfb-42e6-8dc1-ee5a60b16b28
+

# ╔═╡ 041fa872-44d7-4caa-9c75-cf041cbb56cd
md"""
The "+" operator has 208 methods. How can we tell which one it's using?"""

# ╔═╡ 909b2a33-f832-4769-b63a-18ea2f8585e3
@which 1+1

# ╔═╡ 9f9bcbf9-4cfa-4818-bb87-49a10665416e
md"""
This tells us that it is using then method for types "T" which is some form of integer """

# ╔═╡ 4d212142-6f44-41a8-969f-ff5c748480b0
@which 1.0 + 1

# ╔═╡ fbe4f779-caf4-46f9-ba60-3c819b467978
md"""
Here we can see that + is using the method for "Numbers" """

# ╔═╡ 1cf73cec-f21e-4750-940e-8f73bba34db8
#can we add strings? No because there is not a method for this
"Hello" + "World"

# ╔═╡ 64800d39-4ff9-433c-a1de-3820d401d7d3
md""" 
If we wanted to add a method to add strings, we could, and then the above code would work."""


# ╔═╡ 57f2dc81-e0e8-4b2c-924e-964c505d3ec8
md"""
We can also add methods for our own functions and even types."""

# ╔═╡ c6c6674f-15e4-4f02-bc37-2fbe13149507
md"""
First we will create our own Type called "QERMie" """

# ╔═╡ a6326921-549a-4136-913d-23685cfcd0c2
abstract type QERMie end

# ╔═╡ ef6f1947-d4ec-4dc3-9f63-03c8badc767c
md"""
Now we can add our own structure within this type. Structures have a name and then can also take various fields. Note: structs can be either mutable (can change) or immutable (cannot change) """

# ╔═╡ 0cc760dc-f275-49de-b18f-f3da5936d533
struct Student <: QERMie #structure name - this structure is immutable
	name #fields
	lab
end

# ╔═╡ 4c3af6dd-750b-439e-8632-02b51055fce7
mutable struct Director <: QERMie #this struct is mutable
	name:: String #this specifies that we only want this field to take strings
end

# ╔═╡ c683895a-8210-4fad-a76c-bbf0244df10f
#last year Tim was the director
dir = Director("Tim")

# ╔═╡ 501a911d-805d-4dee-8b17-04aa88953d6c
#but now Beth is
dir.name = "Beth"

# ╔═╡ d012ecba-a60a-4399-9757-2809d4807a2f
#what if we mistakenly put a number in here
dir.name = 12

# ╔═╡ 2be2ab0c-58fc-4f6f-b351-ed432235144e
#lets add some students
student1 = Student("Zoe", "Branch")

# ╔═╡ 1e0b49a7-bfe4-4f39-a9d5-12afa7691eeb
student2 = Student("John B.", "Punt")

# ╔═╡ 9b489e8e-b5e0-476e-8df7-e5140d26ff1f
student3 = Student("Maria", "Berdahl")

# ╔═╡ 61b61059-a3cf-4efb-a031-e1d008827780
student4 = Student("John H.", "Smith" )

# ╔═╡ fa7cbd7d-8cc0-4f2f-8a10-6812f71b9db2
md"""
We can code different methods into a function depending on what structure we put in"""

# ╔═╡ 3a9eabf0-a7da-4504-8248-cf690d497218
function whatlab(director :: Director) #method is for director
	"$(director.name) is the Director of QERM"
end

# ╔═╡ ec9c3321-be58-419a-a1f1-00fd03450ec5
#adding a method for students
whatlab(student ::Student) = "$(student.name) is a graduate student in QERM and is in the $(student.lab) lab"

# ╔═╡ 1a9d6a9c-4c89-40ea-af71-86469fd3bde3
whatlab(dir)

# ╔═╡ 41b1414e-4d3c-43b2-9a0b-57ad87b60ef3
whatlab(student1)

# ╔═╡ acb4b87b-c5af-46be-b652-efae872be5b5
md"""
Add your own name and lab as an object with the struct Student"""


# ╔═╡ aaa4d08e-c225-4062-9b5a-6c39f46c6b7e


# ╔═╡ 6e1a5cc4-12fb-4aba-baca-16261ef828c9
md"""
run the function whatlab on your new object"""

# ╔═╡ df1e0b6d-d4e5-4d5e-b2f6-e5091ca0f1a8


# ╔═╡ 754e11f6-3002-43bf-b2ff-4ac8b0a507bc
md"""
Create a new struct (either mutable or immutable) in the type QERMie"""

# ╔═╡ 0360a3d9-09b1-4ca4-8593-32ca95a62de9


# ╔═╡ a82adb50-5dc3-4dbd-aa03-8f5120968ac9
md"""
Add a new method to the function whatlab for your new struct"""

# ╔═╡ 20edfa96-aab8-466e-9049-ea465eeb0b83


# ╔═╡ 01332959-f28f-4691-8bfe-8e0d26a3e5d8


# ╔═╡ 7856a364-63c1-4688-a79a-731e4ccd6225


# ╔═╡ 6b745539-ed6e-4de6-af97-ae676428c8e4
md"""
# Control Flow

Let's go with the flow in Julia!

## Compound Expressions

Rather than running every single action in its own line, we can combine small snippets of code into a single compound expression. This can be done in one of two ways. First, we can wrap them in a begin/end:

```julia 
x = begin
	a = 1
	b = 3
	z = a+b*im
end
```

where `im` is the imaginary unit.

This can also be done in a single line through the use of semicolons within parentheses:

x = (a=1; b=3; z=a+b*im)

The fun is just beginning!

For our first exercise, define your favorite complex number then find its square using compound expressions.

"""

# ╔═╡ 0d5666c4-5306-4d3a-a5ac-28efdbcd49b8


# ╔═╡ e36258f1-5091-44d9-9450-7d09bbda49d5


# ╔═╡ aff55413-b89a-44f2-bced-b3fbaf8e34b2
md"""

## If else statements

Starting with the familiar conditional evaluations, we can define a function which determines if one number is less than another:

```julia
function test(x, y)
           if x < y
               println("x is less than y")
           else
               println("x is not less than y")
           end
       end
```

We can include extra conditions before the last `else` by including an `elseif` condition. 

If you feel comfortable with this, move to the next section; else, let's practice.

Modify the above function to handle 3 conditions: x is less than y, x is greater than y, and x is equal to y. Then, test that your function works.
"""

# ╔═╡ 2a9be591-9405-4278-91a2-f978a536bb4a


# ╔═╡ 3225066b-00bc-41c2-8182-f200b21c636d


# ╔═╡ 25918c62-28fb-4416-b830-7de37f829ee5
md"""
## Ternary operator

This is related to the if else statement, but is more succinct when there are only two options:

```julia
function geq(x, y)
           x >= y ? println("Yes") : println("No")
       end
```

This takes the form of a logical condition in the form of a question, then gives the two conditional outputs separated by a semicolon. The form is Q ? Y : N.

Now it's your tern! 

Define a function called bigAngle which takes in a complex number then determines whether or not the angle it makes with the x axis is larger than π/2. [Note there is a built in function angle() which finds this angle]
"""

# ╔═╡ 69d1d650-ada9-450d-805d-0256e4289503
md"""
## And `&&` or `||`

These work exactly the same as in R. Note that `&` is bitwise and while `&&` considers the whole expression (and likewise for `|`).

Practice `&&` / `||` master this skill!

Write a function which will check if a number is even and positive or odd and negative
"""

# ╔═╡ b30a08ef-53f5-4ef6-ac1f-cf3295a72919


# ╔═╡ 7b9e1cd5-9c86-44ff-9672-d5fa360dc8d0


# ╔═╡ f3b24853-6b76-40b5-8823-180f2d6df45a
md"""
## For and While

These are also very similar to R, but with no parentheses needed. Here's an example:


```julia
i = 1;
while i < 5
	println(i)
	global i += 1
end
```

This example highlights two important features that are different from R. First if we want to change the value of a global variable from outside of the loop, we must state that it is global. Also Julia supports the '+=' operation. In the example above, we use it in a manner equivalent to 'x=x+1' in R.

This could also be implemented with a for loop:

```julia
for j in 1:5
	println(i)
end
```

Practice this syntax For a While!

Write code which will take the vector x = [1,2,3] and it will add the vector [1,1,1] until the second entry is larger than 5.

"""

# ╔═╡ 99e69085-7277-41cb-ace9-e8e588d256e5


# ╔═╡ 0af32831-126c-4bf3-868f-4f0f8631c409


# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.7.2"
manifest_format = "2.0"

[deps]
"""

# ╔═╡ Cell order:
# ╟─4a9f79a2-bb44-11ec-2a33-a3a55d4483d7
# ╟─0b2822e1-a173-4124-84d9-33223100a4ec
# ╠═883a1967-e709-421e-8e2b-c1e4adb90119
# ╠═4bdfa48f-85e0-440e-b02a-fbb5990c88ae
# ╠═df1af474-79fb-44d0-bd4f-5a5f53b932f7
# ╠═d11d4ccf-e92a-4848-a974-b34ab96bace4
# ╠═d3d946b8-5844-45ea-b622-fbd1be0d57e7
# ╠═78857486-3657-4676-ba93-d08a041d3e0e
# ╟─24a050f1-8110-44db-b3de-50b09d544fd8
# ╠═be849087-fd97-4a84-87f7-dbc400cac1f7
# ╠═055ec2ec-9649-4aee-84d7-daa28b57d29e
# ╠═31baec64-7643-43b9-ab81-6ae04aecd613
# ╠═f2d6bcc7-9516-4feb-a543-238ef24e68a7
# ╠═c6255252-8c2f-4e50-b175-02333a580684
# ╠═d1839acc-78e2-410e-b488-aa29f286cc7f
# ╠═ec866c40-ade0-4ac8-bf77-3e5ccd8d6f35
# ╟─87db6959-3913-46ed-b7fa-1877a495d226
# ╠═9280c81d-0a12-4f1f-bfca-3f71e0f4c65b
# ╠═0872b755-7723-4a77-b9bb-d08d38358695
# ╠═5435ff3a-3d6f-4b28-aabf-892cdd3a36b4
# ╠═5e4a6e05-a6c9-4763-9a3e-e6c8faa41a70
# ╟─173f3091-82a6-4fc7-a94a-690d8850dfd7
# ╠═30b79808-3214-429d-b63f-1f0c449472d7
# ╠═8945a313-82f5-4d1c-a090-ef1ff83ec1a1
# ╠═980b7753-be6c-4eda-ac43-5c5459d483fe
# ╠═8f76fafb-4cf4-4fe1-91d9-b64fd783e9dc
# ╠═809ebd3a-7bee-4567-a63e-bf07557f9a84
# ╠═d4a92584-a484-48e5-b282-9b6a7842e62e
# ╠═8075c7a9-f548-477b-8213-45040a0acfb5
# ╟─dafc3637-7d35-439f-ad2c-13ed44f00302
# ╠═965fcf73-5a7b-42e1-990b-54b06c4cec25
# ╠═00fa11bc-f0be-4cf4-94bc-3af4c2fbc264
# ╟─de7c8fd5-dd56-4465-9485-5f7c034576fa
# ╠═c1551d4d-6dc4-49b1-addd-d6f7130e709d
# ╠═6ceb95db-0e0b-4f24-bba4-06e21d4d1921
# ╠═936bd5ad-201b-41af-b09d-c914290f3996
# ╟─5ad0e57a-f7d5-4a52-bc70-e0fd70479668
# ╠═10cd83b3-6fb8-4a2c-89b5-43f1e97c979e
# ╠═cffe4c28-8c20-446a-bd27-b14b053fa291
# ╠═973cb124-f6d2-4034-9837-7c4206bcac91
# ╠═b84d2b04-f6b6-48b8-92c2-f4627b802334
# ╠═cb2dd919-e483-4dce-874b-a9916b811c63
# ╟─0fbf0bde-b421-4c1d-8f28-da359619d5f0
# ╠═52215e44-4001-42ce-ab09-a638c9ee18a7
# ╠═84ef3805-6dfe-46c2-b575-8aa4482ea17e
# ╠═626c2ab4-3b60-40f5-8ea6-91aee6fc7345
# ╟─53f15123-2d6a-4eda-b2b1-459afaffaa7e
# ╠═195ed6e9-0f41-4a97-a953-c26f10744050
# ╠═6471da31-59e7-422f-825d-19b51a5652f4
# ╟─2baf1a0f-afbd-4aa7-927a-08bb14590390
# ╠═be4dccd4-f8e0-4e8a-b7e0-2828b7ee688f
# ╠═f1905b8b-bd1d-4e23-a79e-a7bde9e1a3ea
# ╠═a4fca9a7-c875-4c89-be42-9f9054bcb17f
# ╠═81351aeb-8441-4691-91a7-40408ebe5683
# ╠═feac60bc-34fa-47ca-911e-b763101e5e9d
# ╠═05751617-76a8-4e5b-9b3a-a4b9bc9b462e
# ╠═efd3bf10-4d7a-424e-a78c-d8ca0472e0ea
# ╠═7881ac9b-d0ee-48cc-9513-7e0a13911e4f
# ╟─79bbc59f-20af-4228-9027-6bb9fb4a0ee5
# ╠═0b2c32ea-18d1-4244-abcd-48580ce3e754
# ╠═ad39b73c-5949-4f97-9cdd-16d62f2fbb9f
# ╠═1367e640-178a-4912-82c1-8e13fca01d82
# ╟─1f8ce052-584c-4a95-b3ce-52a048e61268
# ╠═d944fd66-bad7-4c65-be6a-60f0d4935a90
# ╠═3869adbe-a422-40d1-9e31-c3d7e19d4ee4
# ╟─39113dc6-e995-422f-a7a9-ddda915d246c
# ╠═288b0fd1-3ac1-431d-b9a3-4b40dbb7aeb3
# ╠═ee67a27c-fbea-41a0-b0c7-e2d5b79571cc
# ╠═3011e2e1-260c-4f83-940f-bb7b24d3ac0b
# ╠═8e44e4c2-e908-4232-9753-8eaea3e83b8b
# ╟─6b796084-a7d1-4edb-baff-60550c29b786
# ╠═668484d3-97d6-451c-ad77-93b26ff397a2
# ╠═30e41db4-997d-4da3-b794-e6b0e3729ac0
# ╟─cdc90bfa-e4f5-4310-87bd-f00fa4f7ff7f
# ╠═1ee163ea-15a3-4623-9a6a-714782ae64ed
# ╠═d598b274-140b-45b8-b4bd-374eef12686e
# ╠═b607795b-d112-4492-92c9-0a3639916619
# ╠═0d2a3bdc-f8c0-4241-985e-ef2e1a36eedc
# ╠═47ae3685-0e65-4983-b0a6-c0990ec814ca
# ╠═2157e5b5-06c5-4e17-98c8-5b684879015e
# ╟─92940b24-fed4-423b-a7dc-bab5b1ab425b
# ╠═4c08d717-6acb-4c8d-b6ad-0ada1ef63ebc
# ╠═cb271d14-e3d1-4bd8-b590-b728a3a63061
# ╠═0961e171-9b5e-4b42-a010-326ee21abbd0
# ╠═e2fa9873-25db-423c-a0ee-a5a9ca5a0a63
# ╠═03a5bd65-cf88-4b14-a264-12f4dde3eef2
# ╟─3583ef98-069a-4569-ac6b-f18ae0058323
# ╠═3c974d14-cbfb-42e6-8dc1-ee5a60b16b28
# ╟─041fa872-44d7-4caa-9c75-cf041cbb56cd
# ╠═909b2a33-f832-4769-b63a-18ea2f8585e3
# ╟─9f9bcbf9-4cfa-4818-bb87-49a10665416e
# ╠═4d212142-6f44-41a8-969f-ff5c748480b0
# ╟─fbe4f779-caf4-46f9-ba60-3c819b467978
# ╠═1cf73cec-f21e-4750-940e-8f73bba34db8
# ╟─64800d39-4ff9-433c-a1de-3820d401d7d3
# ╟─57f2dc81-e0e8-4b2c-924e-964c505d3ec8
# ╟─c6c6674f-15e4-4f02-bc37-2fbe13149507
# ╠═a6326921-549a-4136-913d-23685cfcd0c2
# ╟─ef6f1947-d4ec-4dc3-9f63-03c8badc767c
# ╠═0cc760dc-f275-49de-b18f-f3da5936d533
# ╠═4c3af6dd-750b-439e-8632-02b51055fce7
# ╠═c683895a-8210-4fad-a76c-bbf0244df10f
# ╠═501a911d-805d-4dee-8b17-04aa88953d6c
# ╠═d012ecba-a60a-4399-9757-2809d4807a2f
# ╠═2be2ab0c-58fc-4f6f-b351-ed432235144e
# ╠═1e0b49a7-bfe4-4f39-a9d5-12afa7691eeb
# ╠═9b489e8e-b5e0-476e-8df7-e5140d26ff1f
# ╠═61b61059-a3cf-4efb-a031-e1d008827780
# ╟─fa7cbd7d-8cc0-4f2f-8a10-6812f71b9db2
# ╠═3a9eabf0-a7da-4504-8248-cf690d497218
# ╠═ec9c3321-be58-419a-a1f1-00fd03450ec5
# ╠═1a9d6a9c-4c89-40ea-af71-86469fd3bde3
# ╠═41b1414e-4d3c-43b2-9a0b-57ad87b60ef3
# ╟─acb4b87b-c5af-46be-b652-efae872be5b5
# ╠═aaa4d08e-c225-4062-9b5a-6c39f46c6b7e
# ╟─6e1a5cc4-12fb-4aba-baca-16261ef828c9
# ╠═df1e0b6d-d4e5-4d5e-b2f6-e5091ca0f1a8
# ╟─754e11f6-3002-43bf-b2ff-4ac8b0a507bc
# ╠═0360a3d9-09b1-4ca4-8593-32ca95a62de9
# ╟─a82adb50-5dc3-4dbd-aa03-8f5120968ac9
# ╠═20edfa96-aab8-466e-9049-ea465eeb0b83
# ╠═01332959-f28f-4691-8bfe-8e0d26a3e5d8
# ╠═7856a364-63c1-4688-a79a-731e4ccd6225
# ╟─6b745539-ed6e-4de6-af97-ae676428c8e4
# ╠═0d5666c4-5306-4d3a-a5ac-28efdbcd49b8
# ╠═e36258f1-5091-44d9-9450-7d09bbda49d5
# ╟─aff55413-b89a-44f2-bced-b3fbaf8e34b2
# ╠═2a9be591-9405-4278-91a2-f978a536bb4a
# ╠═3225066b-00bc-41c2-8182-f200b21c636d
# ╟─25918c62-28fb-4416-b830-7de37f829ee5
# ╟─69d1d650-ada9-450d-805d-0256e4289503
# ╠═b30a08ef-53f5-4ef6-ac1f-cf3295a72919
# ╠═7b9e1cd5-9c86-44ff-9672-d5fa360dc8d0
# ╟─f3b24853-6b76-40b5-8823-180f2d6df45a
# ╠═99e69085-7277-41cb-ace9-e8e588d256e5
# ╠═0af32831-126c-4bf3-868f-4f0f8631c409
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
