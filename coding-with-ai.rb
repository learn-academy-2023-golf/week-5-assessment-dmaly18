# ASSESSMENT 5: Coding Critique with AI

# Use AI to learn about the following code.

# Based on your learning, reverse engineer a prompt that this code would satisfy.

# Add comments to each line to explain the code.

taco_votes = ['fish taco', 'california burrito', 'Tacos Al Pastor', 'Carnitas tacos', 'California burrito', 'Fish taco', 'California Burrito', 'Fish Taco', 'Tacos de Barbacoa', 'tacos Al Pastor', 'fish taco', 'California burrito', 'fish taco', 'tacos al pastor', 'Carnitas tacos', 'Fish taco', 'tacos de barbacoa', 'fish taco', 'Carnitas Tacos', 'carnitas tacos', 'Fish Taco', 'fish taco']

totals = taco_votes.reduce(Hash.new(0)) do |result, vote|
  result[vote.downcase] += 1
  result
end

p totals

# taco_votes is a array that contains the votes for different types of tacos
# totals is a variable that will store the result of vote counting initalized as a empty hash
#taco_votes.reduce(Hash.new(0)) do |result, vote|: This line uses the reduce method to iterate over the taco_votes array. reduce is used to accumulate a value, in this case, a hash, by applying a block of code to each element of the array. Hash.new(0) is used to initialize an empty hash with a default value of 0. This hash will store the vote counts.
#result[vote.downcase] accesses the hash with the lowercase vote as the key.
#.downcase is used to convert the vote to lowercase, ensuring that case sensitivity is ignored. For example, "Fish Taco" and "fish taco" will be treated as the same vote.