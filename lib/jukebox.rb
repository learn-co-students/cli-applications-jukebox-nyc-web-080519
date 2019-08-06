# Add your code here

require 'pry'

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end 

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.strip
  response_integer = checker(response)
    if songs.include?(response)
      puts "Playing #{response}"
    elsif response_integer != nil && response_integer >= 1 && response_integer <= songs.length 
      puts "Playing #{songs[response.to_i-1]}" #song 1 corresponds to zero index
    else 
      puts "Invalid input, please try again"
    end
end 

def checker(str)
  Integer(str) rescue nil
end

def list(songs)
  songs.each_with_index {|item, index|
  puts "#{index+1}. #{item} "}  
end 

def exit_jukebox
  puts "Goodbye"
end 

def run(songs)
  puts "Please enter a command:"
  user_response = gets.chomp
  while user_response != "exit"
    case user_response
      when "help"
        help
        puts "Please enter a command:"
        user_response = gets.chomp
      when "list"
        list(songs)
        puts "Please enter a command:"
        user_response = gets.chomp
      when "play"
        play(songs)
        puts "Please enter a command:"
        user_response = gets.chomp
      else
        puts "Invalid input, please try again:"
        user_response = gets.chomp
      end
    end
  exit_jukebox
end 