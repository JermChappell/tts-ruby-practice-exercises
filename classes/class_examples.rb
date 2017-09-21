class Person    
   
   attr_reader :name, :age
    
    def initialize(name, age)
        @name = name
        @age = age
        
        
    end

    # def name
    #     @name
    # end
 
    def age
        @age
    end

    def birthday
        @age += 1   
    end
    
    def change_name(new_name)
        @name = New_name
    
    attr_accessor(:name, :price, :quantity, :brand)
    
    class product
        def initialize(name, price, quantity, brand)
        @name = name
        @price = price
        @quantity = quantity
        @brand = brand
    end
        
end

class pet
    
    def initialize(name, age, species)
        @name = name
        @age = age 
        @species = species
    

    end
    
    def sound
        case @species
        
# my_profile = Person.new("Jeremy", 30)

# puts "Hi im #{my_profile.name} and i am #{my_profile.age} years old."

# my_profile.birthday

# puts "I just had a birthday and now I'm #{my_profile.age} years old."

# # my_profile.change_name("megaman")

# puts "i just change my name. Megaman i shall be know as #{my_profile.name}!"

# tom = person.new("tom", 41)