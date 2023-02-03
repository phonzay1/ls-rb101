def some_method(param)
  param += "Hello"
  param << "World"
end

str = 'test'
puts some_method(str)
puts str
# --------------------------

a = [1, 2, 3, 4, 5]
p a.object_id
p a[0].object_id

def mutate_arr(array)
  array[0] = 9
end

mutate_arr(a)
p a
p a.object_id
p a[0].object_id