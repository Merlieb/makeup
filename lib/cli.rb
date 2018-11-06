
class Makeup::CLI

    def call
        puts "           Hello to Makeup"
        puts "  Enter the menu number of today's make-up:"
        list_makeup
        menu
        goodbye
    end
    

    def list_makeup 
    
     @tip = Makeup::Tips.today
     @tip.each.with_index(1) do |tip, i|
      puts "#{i}. #{tip.name} - #{tip.avaibility}"
    end
    end

    def menu 
        input = nil
        while input != "exit"
       # puts "Menu"
       puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
       puts "    Not sure what you want, type list or exit!!!"
       puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
     input = gets.strip.downcase

     if input.to_i > 0
        the_tip = @tip[input.to_i-1]
        puts "#{the_tip.name} - #{the_tip.avaibility}"
     elsif input == "list"
            list_makeup
        #else
           # puts "Not sure what you want, type list or exit!!!"
        end
    end
end
#             case input
#      when "1"
#         puts "more on tutorials"
#      when "2"
#         puts "more on products"
#         puts "_____________"
#      when "list"
#         list_makeup
#      else
#         puts "Not sure what you want, type list or exit!!!"
#     end
# end
# end
def goodbye 
puts "see you tomorrow for more Makeup :)"
end
end
