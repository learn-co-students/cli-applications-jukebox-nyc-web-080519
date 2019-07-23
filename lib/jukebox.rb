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

def list(my_songs)
  my_songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(my_songs)
  puts "Please enter a song name or number:"
  result = gets.chomp
  if my_songs.include?(result)
    puts "Playing #{result}"
  elsif !my_songs.include?(result)
    puts "Invalid input, please try again"
  end
  if my_songs[result.to_i - 1]
    puts "Playing #{my_songs[result.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  puts "Please enter a command:"
  result = gets.chomp 
  if result == "help"
    until result!= "help" do
      puts "Please enter a command:"
      result = gets.chomp
    end
  end
  if result == "list"
    list(my_songs)
  elsif result == "play"
    play(my_songs)
  elsif result == "exit"
    exit_jukebox
  end
end