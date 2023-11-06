# ASSESSMENT 5: Ruby Coding Practical Questions
# MINASWAN

# -------------------1) Create a method that takes in a hash and returns one array with all the hash values at their own index and in alphabetical order. No nested arrays. Use the test variable provided.
# HINT: Google 'ruby get rid of nested arrays'

us_states = { northwest: ['Washington', 'Oregon', 'Idaho'], southwest: ['California', 'Arizona', 'Nevada'], notheast: ['Maine', 'New Hampshire', 'Rhode Island'] }
# Expected output: ['Arizona', 'California', 'Idaho', 'Maine', 'Nevada', 'New Hampshire', 'Oregon', 'Rhode Island', 'Washington'] 

# Pseudo code:
# Create a method that takes a paramater 'hash' to be a hash
# Use hash.values to obtain the array containing all the values from the hash
# Use .flatten to turn the array of arrays into a single array so there are no nested arrays.
# Use .sort to sort the values in alphabetical order.

def extract_and_sort_states(hash)
    values = hash.values.flatten
    sorted_values = values.sort
  end

  p extract_and_sort_states(us_states)


# --------------------2a) Create a class called Bike that is initialized with a model, wheels, and current_speed. The default number of wheels is 2. The current_speed should start at 0. Create a bike_info method that returns a sentence with all the data from the bike object.

# Expected output example: 'The Trek bike has 2 wheels and is going 0 mph.

# Pseudo code:
# Create a class called bike
# Initialize to take in two parameters with wheels set to the value of 2
# define a method that ruturns a string that includes information about the bike
# Create a new instance of bike "bike.new" and assign the argument trek for the model

class Bike
    def initialize(model, wheels = 2)
      @model = model
      @wheels = wheels
      @current_speed = 0
    end
  
    def bike_info
      "The #{@model} bike has #{@wheels} wheels and is going #{@current_speed} mph."
    end
  #end
  
  #the_bike = Bike.new('Trek')
  #p the_bike.bike_info
  

# -------------------2b) Add the ability to pedal faster and brake. The pedal_faster method should increase the speed by a given amount. The brake method should decrease the speed by a given amount. The bike cannot go negative speeds.

# Expected output example: my_bike.pedal_faster(10) => 10
# Expected output example: my_bike.pedal_faster(18) => 28
# Expected output example: my_bike.brake(5) => 23
# Expected output example: my_bike.brake(25) => 0

# Pseudo code:
# Create a method that increases the bike's speed by a certain ammount.
# use += to increase the speed by the instance variable "speed_increase"
# use a if statement to prevent the speed going below 0
# use the same method for brake 

def pedal_faster(speed_increase)
    @current_speed += speed_increase
    @current_speed = 0 if @current_speed < 0
    @current_speed
  end

  def brake(speed_decrease)
    @current_speed -= speed_decrease
    @current_speed = 0 if @current_speed < 0
    @current_speed
  end
end

the_bike = Bike.new('Trek')
p the_bike.bike_info
p the_bike.pedal_faster(10) 
p the_bike.pedal_faster(18) 
p the_bike.brake(5)       
p the_bike.brake(25)      