require "http"
require "tty-prompt"
system "clear"
prompt = TTY::Prompt.new

puts "Which subreddit would you like to navigate to?"
subreddit = gets.chomp

response = HTTP.get("https://www.reddit.com/r/#{subreddit}/.json")

if response == []
  puts "This subreddit doesn't exist. Please try again."
  puts "Which subreddit would you like to navigate to?"
  subreddit = gets.chomp

  response = HTTP.get("https://www.reddit.com/r/#{subreddit}/.json")
  subreddit_data = response.parse
else
  subreddit_data = response.parse
  subreddits = []
  index = 0
  while index < subreddit_data["data"]["dist"]
    subreddits << subreddit_data["data"]["children"][index]["data"]["title"]
    index += 1
  end

  selection = prompt.select("Which page would you like to visit?", subreddits)

  selection = selection.gsub(" ", "_")
  selection = selection.delete("'")

  index = 0
  while index < subreddit_data["data"]["dist"]
    if subreddit_data["data"]["children"][index]["data"]["title"] == selection
      link = subreddit_data["data"]["children"][index]["data"]["permalink"]
      break
    end
    index += 1
  end

  p "Check out this link!: #{link}"
end
