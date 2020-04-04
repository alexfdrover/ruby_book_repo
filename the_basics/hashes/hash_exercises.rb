# hash_exercises.rb

#Ex 1
# family = { uncles: ["bob", "joe", "steve"],
#           sisters: ["jane", "jill", "beth"],
#           brothers: ["frank", "rob", "david"],
#           aunts: ["mary", "sally", "susan"] }

# use select to gather only immediate family members' names into an array
# remember that .select returns a hash of the true-evaluated key-value pairs
# e.g. { key1: [a, b, c], key2: [d, e, f]}

# immediate_family = family.select {|k, v| (k == "sisters") || (k == "brothers") }
# p immediate_family.values.flatten


#Ex 3
#hash = {a: 1, b: 2, c: 3}
#key_array = hash.keys
#key_array.each {|k| puts k}
#value_array = hash.values
#value_array.each {|v| puts v}
#hash.each {|k, v| p "#{k}: #{v}"}

#Ex 4
#person[:name]

#Ex 5
#hash = {a: 1, b: 2, c: 3}
#p hash.has_value?(1)

#Ex 8
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

result = {}
words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each_value do |v|
  puts "-----"
  puts v
end