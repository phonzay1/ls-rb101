def tricky_method(a_string_param)
  a_string_param += "rutabaga"
end

def tricky_method2(an_array_param)
  an_array_param += ["rutabaga"]
end

my_string = tricky_method("pumpkins")
my_array = tricky_method2(["pumpkins"])

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"