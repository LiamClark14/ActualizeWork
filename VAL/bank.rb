clients = []
5.times do
  client = {}
  puts "What is your first name?"
  first = gets.chomp
  client[:first] = first
  puts "What is your last name?"
  last = gets.chomp
  client[:last] = last
  puts "What is your email?"
  email = gets.chomp

  while !email.include?("@") || !email.end_with?(".com")
    puts "Invalid email address, try again"
    puts "What is your email?"
    email = gets.chomp
  end
  client[:email] = email
  clients << client
  account_number = rand(1000000000..9999999999)
  client[:account_number] = account_number
end
i = 0
while i < clients.length
  puts "FIRST NAME: #{clients[i][:first]}"
  puts "LAST NAME: #{clients[i][:last]}"
  puts "EMAIL: #{clients[i][:email]}"
  puts "ACCOUNT NUMBER: #{clients[i][:account_number]}"
  puts "-------------------------------------------"
  i += 1
end

puts "Enter an account number:"
acct_num = gets.chomp.to_i

i = 0

while i < clients.length
  if acct_num == clients[i][:account_number]
    puts "FIRST NAME: #{clients[i][:first]}"
    puts "LAST NAME: #{clients[i][:last]}"
    puts "EMAIL: #{clients[i][:email]}"
  end
  i += 1
end