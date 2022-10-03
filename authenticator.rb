users= [
    {username: "alex" , password: "alex"},
    {username: "ellie" , password: "ellie"},
    {username: "morgan" , password: "morgan"},
]
puts "Welcome to the Authenticator"
puts "This program will take input from the user and compare to the credentials"
puts "If authentication is successful, the user object will be displayed"

attempts= 1
while attempts <4
    print "Username: "
    username= gets.chomp 
    print "Password: "
    password= gets.chomp
    users.each do |user|
        if user[:username]==username && user[:password]==password
            puts user
            break
        else 
            puts "Invalid Email/Password!"
            break
        end
    end
    puts "Press n to quit or any other key to continue:"
    input= gets.chomp.downcase
    break if input=="n"
    p attempts+=1
end

