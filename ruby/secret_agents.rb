##Encrypt
#- Identify string containing password
#- Identify the length of the password
#- Identify, in order, the individual characters comprising the password
#- Determine the chacters which immediately proceed the password characters alphabetically
#- For each password character, print the immediately proceeding character
#- Combine the proceeding characters
#- Print the combined proceeding characters

index = 0
puts "Please enter your password"
  password = gets.chomp

while index < password.length
  puts password[index].next
  index +=1
end
