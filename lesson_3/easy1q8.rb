flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

flintstones.select! { |name, num| name == 'Barney' }
flintstones = flintstones.to_a.flatten
p flintstones

# flintstones = flintstones.to_a
# flintstones = flintstones[2]
# p flintstones