# This is an <h1>

#434c5e

<!--This me.-->

Text can be easily styled as italic or bold using markdown.

**This text is in bold.**
__And so is this text.__

*This text is in italics.*
_And so is this text._

***This text is in both.***
**_As is this!_**
*__And this!__*
~~This text is rendered with strikethrough.~~


There's a <a> above me!

Block quotes are easy and done with the > character.

> This is a block quote. You can either

Lists

Unordered lists can be made using asterisks, pluses, or hyphens.

* Item

1. Item one

- [X] This task has been completed

Code blocks

	This is code
	So is this

John didn't even know what the `go_to()` function did!

```ruby
def foobar
  puts "Hello world!"
end
```

[Click me!](http://test.com/ "Link to Test.com")

[Reference-Link Name](Reference-Link).

[Also check out this link][foobar] if you want to.

[link1]: http://test.com/ "Cool!"

- [Reference-Link](#heading)
- [Another heading](#another-heading)
- [Chapter](#chapter)
  - [Subchapter <h3 />](#subchapter-h3-)

Images are done the same way as links but with an exclamation point in front!

![This is the alt-attribute for my image](http://imgur.com/myimage.jpg "An optional title")

<http://testwebsite.com/> is equivalent to
[http://testwebsite.com/](http://testwebsite.com/)

Auto-links for emails

<foo@bar.com>
 
### python code 

```python

# Math is what you would expect
1 + 1   # => 2
8 - 1   # => 7
10 * 2  # => 20
35 / 5  # => 7.0


-7 % 3  # => 2

# Exponentiation (x**y, x to the yth power)
2**3  # => 8

# Enforce precedence with parentheses
1 + 3 * 2    # => 7
(1 + 3) * 2  # => 8


# negate with not
not True   # => False

# Comparison operators look at the numerical value of True and False
0 == False   # => True


# None, 0, and empty strings/lists/dicts/tuples/sets all evaluate to False.
# All other values are True
bool(0)      # => False

# Since Python 3.6, you can use f-strings or formatted string literals.
name = "Reiko"
f"She said her name is {name}."  # => "She said her name is Reiko"
# Any valid Python expression inside these braces is returned to the string.
f"{name} is {len(name)} characters long."  # => "Reiko is 5 characters long."


None is None   # => True


print("Hello, World", end="!")  # => Hello, World!

# Simple way to get input data from console
input_string_var = input("Enter some data: ")  # Returns the data as a string


list(filled_dict.values())  # => [1, 2, 3] in Python 3.7+

# Check for existence of keys in a dictionary with "in"
"one" in filled_dict  # => True
1 in filled_dict      # => False

# Looking up a non-existing key is a KeyError
filled_dict["four"]  # KeyError

# "setdefault()" inserts into a dictionary only if the given key isn't present
filled_dict.setdefault("five", 5)  # filled_dict["five"] is set to 5


# From Python 3.5 you can also use the additional unpacking options
{"a": 1, **{"b": 2}}  # => {'a': 1, 'b': 2}


# Sets store ... well sets
empty_set = set()
# Initialize a set with a bunch of values.
some_set = {1, 1, 2, 2, 3, 4}  # some_set is now {1, 2, 3, 4}

# Similar to keys of a dictionary, elements of a set have to be immutable.
invalid_set = {[1], 1}  # => Raises a TypeError: unhashable type: 'list'
# Do set intersection with &
other_set = {3, 4, 5, 6}

# Do set symmetric difference with ^
{1, 2, 3, 4} ^ {2, 3, 5}  # => {1, 4, 5}

# Check for existence in a set with in
2 in filled_set   # => True
10 in filled_set  # => False

# Make a one layer deep copy
filled_set = some_set.copy()  # filled_set is {1, 2, 3, 4, 5}
filled_set is some_set        # => False


####################################################
## 3. Control Flow and Iterables
####################################################

# Let's just make a variable
some_var = 5

if some_var > 10:
	print("some_var is totally bigger than 10.")
elif some_var < 10:    # This elif clause is optional.
	print("some_var is smaller than 10.")
else:                  # This is optional too.
	print("some_var is indeed 10.")

# Handle exceptions with a try/except block
try:
	# Use "raise" to raise an error
	raise IndexError("This is an index error")
except IndexError as e:
	pass                 # Refrain from this, provide a recovery (next example).
except (TypeError, NameError):
	pass                 # Multiple exceptions can be processed jointly.
else:                    # Optional clause to the try/except block. Must follow
						 # all except blocks.
	print("All good!")   # Runs only if the code in try raises no exceptions
finally:                 # Execute under all circumstances
	print("We can clean up resources here")


# You can grab all the elements of an iterable or iterator by call of list().
list(our_iterable)  # => Returns ["one", "two", "three"]
list(our_iterator)  # => Returns [] because state is saved


def set_global_x(num):
	# global indicates that particular var lives in the global scope
	global x
	print(x)   # => 5
	x = num    # global var x is now set to 6
	print(x)   # => 6


# There are also anonymous functions
(lambda x: x > 2)(3)                  # => True
(lambda x, y: x ** 2 + y ** 2)(2, 1)  # => 5

# There are built-in higher order functions
list(map(add_10, [1, 2, 3]))          # => [11, 12, 13]
list(map(max, [1, 2, 3], [4, 2, 1]))  # => [4, 2, 3]

list(filter(lambda x: x > 5, [3, 4, 5, 6, 7]))  # => [6, 7]

# We can use list comprehensions for nice maps and filters
# List comprehension stores the output as a list (which itself may be nested).
[add_10(i) for i in [1, 2, 3]]         # => [11, 12, 13]
[x for x in [3, 4, 5, 6, 7] if x > 5]  # => [6, 7]

# You can construct set and dict comprehensions as well.
{x for x in "abcddeef" if x not in "abc"}  # => {'d', 'e', 'f'}
{x: x**2 for x in range(5)}  # => {0: 0, 1: 1, 2: 4, 3: 9, 4: 16}


# You can shorten module names
import math as m
math.sqrt(16) == m.sqrt(16)  # => True

# NOTE: `range` replaces `xrange` in Python 3.
for i in double_numbers(range(1, 900000000)):  # `range` is a generator.
	print(i)
	if i >= 30:
		break

```

### bash code 

```bash
#!/usr/bin/env bash
# Simple hello world example:
echo "Hello world!" # => Hello world!


variable="Some string"

echo "$variable" # => Some string
echo '$variable' # => $variable

# String substitution in variables:
echo "${variable/Some/A}" # => A string
# This will substitute the first occurrence of "Some" with "A".

# String length:
echo "${#variable}" # => 11

# Indirect expansion:
other_variable="variable"
echo ${!other_variable} # => Some string


# Declare an array with 6 elements:
array=(one two three four five six)
# Print the first element:
echo "${array[0]}" # => "one"
# Print all elements each of them on new line.
for item in "${array[@]}"; do
	echo "$item"
done

# Built-in variables:
# There are some useful built-in variables, like:
echo "Last program's return value: $?"

# Brace Expansion {...}
# used to generate arbitrary strings:
echo {1..10} # => 1 2 3 4 5 6 7 8 9 10
echo {a..z} # => a b c d e f g h i j k l m n o p q r s t u v w x y z

echo "I'm in $(pwd)" # execs `pwd` and interpolates output

if [[ "$name" != "$USER" ]]; then
	echo "Your name isn't your username"
else
	echo "Your name is your username"
fi

# To use && and || with if statements, you need multiple pairs of square brackets:
read age
if [[ "$name" == "Steve" ]] && [[ "$age" -eq 15 ]]; then
	echo "This will run if $name is Steve AND $age is 15."
fi

if [[ "$name" == "Daniya" ]] || [[ "$name" == "Zach" ]]; then
	echo "This will run if $name is Daniya OR Zach."
fi


Contents=$(cat file.txt)
# Note that it will overwrite the destination if it already exists.
cp srcFile.txt clone.txt
cp -r srcDirectory/ dst/ # recursively copy

cd ~    # change to home directory

cat > hello.py << EOF
#!/usr/bin/env python
from __future__ import print_function
import sys
print("#stdout", file=sys.stdout)
print("#stderr", file=sys.stderr)
for line in sys.stdin:
	print(line, file=sys.stdout)
EOF
# Variables will be expanded if the first "EOF" is not quoted


python hello.py > "output.out" # redirect output from the script to output.out


# Cleanup temporary files verbosely (add '-i' for interactive)
# WARNING: `rm` commands cannot be undone


# Bash uses a `case` statement that works similarly to switch in Java and C++:
case "$Variable" in
	# List patterns for the conditions you want to meet
	0) echo "There is a zero.";;
	1) echo "There is a one.";;
	*) echo "It is not null.";;  # match everything
esac

function foo ()
{
	echo "Arguments work just like script arguments: $@"
	echo "And: $1 $2..."
	echo "This is a function"
	returnValue=0    # Variable values can be returned
	return $returnValue
}

```
