require "http"

puts "Welcome to my Dictionary!"
puts "Enter a word to search for its definition and pronunciation:"
puts "Enter 'q' to quit"
word = gets.chomp

response = HTTP.get("http://api.wordnik.com/v4/word.json/#{word}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=ac6099e63826b8650f05e22c4cc08baa2f21668e3f16176fd")
word_data = response.parse

while word != "q"
  response = HTTP.get("http://api.wordnik.com/v4/word.json/#{word}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=ac6099e63826b8650f05e22c4cc08baa2f21668e3f16176fd")
  word_data = response.parse

  index = 1
  while index < word_data.length
    definition = word_data[index]["text"]
    pro = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/pronunciations?useCanonical=false&limit=50&api_key=ac6099e63826b8650f05e22c4cc08baa2f21668e3f16176fd")
    pronunciation = pro.parse
    puts "-----------------------------------"
    puts "#{index}. #{definition}"
    if index < pronunciation.length
      puts "Pronunciation: #{pronunciation[index]["raw"]}"
    end
    index += 1
  end
  puts "-----------------------------------"
  puts "Enter another word to search for its definition and pronunciation:"
  puts "Enter 'q' to quit"
  word = gets.chomp
end
