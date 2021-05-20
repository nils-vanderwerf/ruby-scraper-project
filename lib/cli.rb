##CLI Controller
class CommandLine
  
    def call 
       list_options
       menu
    end

    def list_options
        puts "Welcome to the program! We have a whole library of promotions for you to choose from."
    puts <<-DOC.gsub /^\s*/, ''
        Deal categories:

        1. Automotive
        2. Beauty & Spas
        3. Food & Drink
        4. Health & Fitness
        5. Home Improvement
        6. Personal Services
        7. Retail
        8. Things To Do
    DOC
    # @promotions = Promotions.all_from_category
    end

    def menu 
        puts "Enter the number of the category you'd like to view deals on:"
        input = nil
        while input != "quit"
        input = gets.strip
        case input
            #REFACTOR: abstract category name later
            when "1"
                puts "Here are some automotive promotions:" 
            when "2"
                puts "Here are some beauty & spa promotions:"
            when "3"
                puts "Here are some food & drink promotions:"
            when "4"
                puts "Here are some health & fitness promotions:"
            when "5"
                puts "Here are some home improvement promotions:"
            when "6"
                puts "Here are some personal services promotions:"
            when "7"
                puts "Here are some retail promotions:"
            when "8"
                puts "Here are some promotions on things to do:"
            else
                puts "No category exists for this number"
                list_options
            end
            puts input
            @promotions = Promotions.new(input)
        end
    end
end