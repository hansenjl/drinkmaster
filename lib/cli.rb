class CLI
    # interact with the user
    # any puts or get statements
    # control the flow of our program

    def start
        puts "Welcome"
        API.fetch_drinks
    end
end



