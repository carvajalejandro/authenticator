users= [
    {username: "alex" , password: "alex"},
]

puts "Welcome to the Authenticator"
25.times {print "-"}
puts "This program will take input from the user and compare to the credentials"
puts "If authentication is successful, the user object will be displayed"

p attempts= 1
while attempts <4
    print "Username: "
    username= gets.chomp 
    print "Password: "
    password= gets.chomp
    users.each do |user|
        if user[:username]==username && user[:password]==password
            puts user
        else 
            puts "Invalid Email/Passord"
        end
    end
    puts "Press n to quit or any other key to continue:"
    input= gets.chomp.downcase
    break if input=="n"
    p attempts+=1
end

