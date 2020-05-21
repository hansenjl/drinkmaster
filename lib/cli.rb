class CLI
    # interact with the user
    # any puts or get statements
    # control the flow of our program

    def start
        puts "Welcome"
        API.fetch_drinks
        self.menu
    end

    def menu
        puts "Would you like to see the list of drinks?"
        puts "Type 'yes' to continue or any other key to exit."
        user_input = gets.strip.downcase
        if user_input == "yes" || user_input == "y"
            puts "Good choice!"
            display_list_of_drinks
            ask_user_for_drink_choice
            sleep(1)
            menu
        elsif user_input == 'search'
            #list all of our methods to do the search

            menu # recusion
        else
            #end the program
            puts "Goodbye!"
        end
    end

    def ask_user_for_drink_choice
        #ask user for a choice
        index = gets.strip.to_i - 1
        # validate their input
        max_limit = Drink.all.length - 1
        until index.between?(0,max_limit)
            puts "Sorry that is an invalid choice"
            index = gets.strip.to_i - 1
        end
        #found their drink choice
        drink_instance = Drink.all[index]
        # call the method that will print out the details
        display_drink_details(drink_instance)
        # b
    end

    def  display_drink_details(drink)
        sleep(1)
        puts "\n"
        puts drink.name
        puts "\nCategory:" + drink.category
        puts "\nGlass:" + drink.glass
        puts "\nInstructions:" + drink.instructions
        # c
    end


    def display_list_of_drinks
        # Access all the drinks
        # print each one out
        Drink.all.each.with_index(1) do |drink, index|
            puts "#{index}. #{drink.name}"
        end
    end

end



