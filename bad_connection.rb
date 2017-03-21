# If you don’t input anything (just hit enter) they respond with HELLO?!
# If you ask a question with any lower-case letters, they respond with I AM HAVING A HARD TIME HEARING YOU.
# If you ask a question in all upper-case letters, they respond with NO, THIS IS NOT A PET STORE

# The first time you say GOODBYE! they say ANYTHING ELSE I CAN HELP WITH?
# The second time you say GOODBYE! they say THANK YOU FOR CALLING! and the program exits.
# Whenever you’re ready to exit the program, set ready_to_quit to true.

ready_to_quit = false
num_goodbye = 0

puts 'HELLO, THIS IS A GROCERY STORE!'

until ready_to_quit

    # ask user for input
    input = gets.chomp
    # checks for empty input
    if input == ''
        puts 'HELLO?!'
    # checks if input is lowercase
    elsif input == input.downcase
        puts 'I AM HAVING A HARD TIME HEARING YOU!'
    # checks in input is uppercase and is not "GOODBYE!"
    elsif input == input.upcase && input != 'GOODBYE!'
        puts 'NO, THIS IS NOT A PET STORE!'
    # incrementing by 1
    elsif input == 'GOODBYE!'
        num_goodbye += 1
    end

    # if variable is 1, then print, if variable is 2 then change variable ready_to_quit to true
    if num_goodbye == 1
        puts 'ANYTHING ELSE I CAN HELP WITH?'
    elsif num_goodbye == 2
        ready_to_quit = true
    end

end

puts 'THANK YOU FOR CALLING!'
