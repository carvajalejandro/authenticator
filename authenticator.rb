users= [
  {username: "alex" , password: "alex"},
  {username: "ellie" , password: "ellie"},
  {username: "morgan" , password: "morgan"},
]

def auth_user(username, password, list_of_users)
  list_of_users.each do|user_record|
    if user_record[:username]==username && user_record[:password]==password
      return user_record    
    end
end
"Invalid Email/Password!"
end
puts "Welcome to the Authenticator!"
puts "This program will take input from the user and compare to the credentials"
puts "If authentication is successful, the user object will be displayed"

attempts= 1
while attempts <4
  print "Username: "
  username= gets.chomp 
  print "Password: "
  password= gets.chomp
  authentication = auth_user(username, password, users)
  puts authentication
  puts "Press n to quit or any other key to continue:"
  input= gets.chomp.downcase
  break if input=="n"
    attempts+=1
end
puts "You have exceeded the number of attempts" if attempts==4

