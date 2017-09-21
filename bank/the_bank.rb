# Get the classes we wrote in 'bank_classes.rb'

require_relative 'bank_classes'

# Keep track of all our customers and accounts.
@customers = []
@accounts = []

# ****************
# ** home screen **
# ****************

def welcome_screen
    @current_customer = ""
    
    puts "Welcome to Tech Talent Bank"
    puts "Please choose from the following: "
    puts "----------------------------"
    puts "1. Customer sign-in"
    puts "2. New Customer Registration"
    
    choice = gets.chomp.to_i
    
    case choice
    when 1
        sign_in
    when 2
        sign_up ("", "")
    end
    # for user who has account
    def sign_in
        puts "Whats your name?"
        name - gets.chomp
        puts "What is your location?"
        location = puts.chomp
        
        # are there customers at all?
        if @customers.empty?
            puts "No customer found with that information"
            sign_up(name, location)
        end
        
        # ok, there are customers... 
        # but, is this user's info correct?
        customer_exists = false
        @customers.each do |customer|
            if name == customer.name && location == customer.location
                @current_customer = customer
                customer_exists = true
            end
            
            if Customer_exists
                # if customer exist show them the menu
            account_menu
        else
            # we didnt find the customer, let them:
            # try again?
            # sign up
            puts "No customer found with that information"
            puts "1. try again?"
            puts "2. sign up"
            
            choice = gets.chomp,to_i
            
            case choice
            when 1
                sign_in
            when 2
                sign_up(name, location)
                
            end
            end 
    # this is for a user that needs a new account
    def sign_up(name, location)
        if name =="" && location == ""
            print "whats your name?"
            name =gets.chomp
            print "whats your location?"
            location = gets.chomp
            
    end
    @current_customer = Customer.new(name, location)
    
    @customer.push(@current_customer)
    
    puts "Registration successful!"
    account_menu
end

# *******************
# ** Account Menu **
# *******************
def acount_menu
    puts "Account_menu"
    puts "_____________"
    puts "1. create an account"
    puts "2.Review an account"
    puts "3. Sign Out"
    

    choice = gets.chomp
    
    case choice
    when 1
        create_account
    when 2
        review_account
    when 3
        puts "thanks for banking with us."
        welcome_screen
    else 
        puts "invalid seletion"
        account_menu
    end
end

# *********************
# ** Create account**
# **********************

def creat_account
    print "How much will your initial deposit be?"
    amount = gets.chomp.to_f
    
    print "what kind of account will you be opening?"
    account_type = gets.chomp
    
    new_account = account.new(@current_customer, amount, (@accounts.length + 1), account_type)
    @accounts.push(new_account)
    puts "Account successfully created!"
    
    account_menu
end

# *****************
# **Review account**
# ******************

def review_account
    @current_account = ""
    print "which account (type) do you want to reciew?"
    tyoe = gets.chomp.downcase
    
    account_exists = false
    @accounts.each do |account|
        if @current_customer = account.customer && type == account.acount_type.downcase
           @current_acount = account
           account_exists = true
            
            
    end     
            
        if  account_exist 
            current_account_actions
        else
            puts "try again"
            review_account
        end

end

# **********************
# ** current account actions**
# *************************

def current_account_actions
    puts "choose from the following:"
    puts "-------------------------"
    puts "1. balance check"
    purs "2. make a deposit"
    puts "3. make a withdrawl"
    puts "4. return to account menu"
    puts "5. sign out"
    
    choice = gets.chomp.to_i
    
    case choice
    when 1
        puts "current account is $#{'%0.2f'%(@current_account.balance)}"
        current_account_actions
    when 2 
        @current_account.deposit
        current_acount.deposit
    when 3
        @current_account.withdrawal
        current_account_actions
    when 4

end