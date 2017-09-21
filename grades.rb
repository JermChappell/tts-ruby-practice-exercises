puts "what number grade did you get in the class?"
grade = gets.chomp.to_i     

if grade >= 60
    puts "you passed! Have a cool summer!"
else
    puts "oh dang. You're gonna have to take that class again. That's a bummer!"
end
