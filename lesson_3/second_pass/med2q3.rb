# Study the following code and state what will be displayed...and why:

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# The `puts` method call on line 12 will output "My string looks like this now: pumpkins",
# while the `puts` method call on line 13 will output "My array looks like this now:
# ['pumpkins', rutabaga'].

# Local variable `my_string` is initialized on line 8 and assigned to the string 'pumpkins'.
# Local variable `my_array` is initialized on line 9 and assigned to the array `[pumpkins]`.
# On line 10, the `tricky_method` method is invoked and the values referenced by `my_string` and `my_array`
# are passed to it as arguments. The method `tricky_method` is defined on lines 8-10, accepting
# 2 parameters: `a_string_param` and `an_array_param`. Initially when `tricky_method`
# is invoked on line 10, `a_string_param` and `my_string` reference the same string
# object: 'pumpkins'. However then on line 4 within the method definition,
# `a_string_param` is reassigned to the value `a_string_param + 'rutabaga'`. At this point in
# the method invocation, `a_string_param` references a new object, while `my_string` still references
# the original object, the string 'pumpkins'. Reassignment within a method definition
# is not mutating, therefore the object referenced by `my_string` is not mutated by the
# `tricky_method` method call.

# When `tricky_method` is invoked on line 10, `an_array_param` and `my_array` reference
# the same array object. When the `<<` method is invoked on the value referenced by
# `an_array_param` on line 5 within the method definition, `<<` is a mutating method
# that modifies the original object referenced by both the main scope local variable, and
# the method parameter. Thus the original array object is modified, with the string 'rutabaga'
# added to it.

