#Ask users for a number.
puts 'give me a number between 1 and 10:'
guess = gets.chomp.to_i 

comp_num = rand(1..10)

#See if the number 
if guess == comp_num
    put "you got it"
end

if guess != comp_num
    puts "no,sorry. It was #{comp_num}."
end



#is the same as the computer's number

#Tell them if they got it right.