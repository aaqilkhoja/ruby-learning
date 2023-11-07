users = [
    {username: "aaqil", password: "password1"},
    {username: "john", password: "password2"},
    {username: "jim", password: "password3"}
]


username =""
password = ""

def get_credentials()
    puts "What is the username?"
    username = gets.chomp.downcase
    puts "Hello, #{username}! What is the password? "
    password = gets.chomp.downcase
    return username, password

end


def is_valid_user(users)
    counter = 0
    while counter < 3    
        username, password = get_credentials()
        user_found = users.any? do |record|
            record[:username] == username && record[:password] == password
        end
  
        if user_found
            puts "Found username: #{username} with password: #{password}"
            break
        else
            puts "Please try again. Press n to quit."
            break if input == "n"
            counter +=1
        end


        if counter ==3
            puts "Exceeded number of log in attempts. Please try again later."
            break
        end
    end
end


puts "Welcome to the Authenticator"

20.times {print "-"}
puts

puts"Enter your username and password when prompted"

is_valid_user(users)

