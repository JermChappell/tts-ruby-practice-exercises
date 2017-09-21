# a = 72 
# puts a * 2.54

puts "how's your mood"
mood = gets.chomp

puts "meow" + (mood.length).to_s

puts "cost of meal?"
cost = gets.to_i

puts "input two numbers"

puts (cost * 0.18) + cost
#user's name
puts "whats your name?"
user_name = gets.chomp
# user weight in lbs
puts "what's your weight in pounds?"
weight_in_lbs = gets.to_i

# user height in inches
puts "what's your height in inches"
height_in_inches = gets.chomp.to_i
# ** Conversion factors **
#lbs to kg
lbs_to_kg = 0.453592        
#inches to cm
in_to_cm = 2.54 

#convert lbs to kgs
def convert_lbs_to_kg(lbs_weight, kg_conversion)
    lbs_weight * kg_conversion
end



weight_in_kg = convert_lbs_to_kg(weight_in_lbs, lbs_to_kg)

#convert inches to cm
height_in_cm = height_in_inches * in_to_cm


# tell the user the answer
puts "hello " + (user_name.upcase).length + ", your height in cm is " +  height_in_cm.to_s + ", and your weihgt in kg is " + weight_in_kg.to_s

puts 