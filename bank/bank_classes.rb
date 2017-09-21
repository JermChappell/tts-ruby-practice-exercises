# classes
#   *Customer
#   *Account

# A Customer will be tied to an account with a "customer" attribute

# #********************
#  ** Customer Class **
# *********************


class Customer

    attr_accessor :name, :location
    
    def initialize(name, location)
        @name = name
        @location = location
    end


end

#  ******************
#  ** Account class **
#  *******************

class account
    
    attr_reader :balance, :account 
    attr_accessor :customer, :account_type

    def initialize(customer, balance, account_number, account_type) 
    @customer = customer
    @balance = balance
    @account_number = account_number
    @account_type = account_number
    end
    
    def deposit
        # ask how much to deposit
        puts "How much would you like to deposit?"
        print "$"
        amount = gets.chomp.to_f
        
        #add the ammount deposited to the balance
        @balance = @balance + ammount
        
        # tell them their new balance
        puts "Your new balance is $#{'%0.2f'%(@balance)}"
        end
        
        
    def withdrawel
        #ask how much to withdraw
        puts "How much would you like to withdraw today?"
        print "$"
        amount = gets.chomp.to_f
        
        # Check to see if they've got enough to withdraw the amount
        # todo: add overdraft protection 
        #subtract the amount from the balance 
        if @balance < amount
            # puts "Dang! Who do you think you are?!?!? GET A JOB!"
            # let user get the money and charge $25 overdraft fee 
           puts "You dont have that much in your account silly. if you continue there will be an overdraft fee of $25. {y / n}"
           answer = gets.chomp
           if answer == 'y'
            @balance -= (amount + 25)
        else puts "that was a wise choice"
        else
            @balance -= amount
            puts
    end
        #tell new balance 
        puts "Your new balance is $#{'%0.2f'%(@balance)}"
        
    
    end
end