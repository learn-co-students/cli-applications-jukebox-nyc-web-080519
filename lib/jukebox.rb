# def say_hello(name)
#   "Hi #{name}!"
# end

# puts "Enter you name:"
# users_name = gets.chomp

# puts say_hello(users_name)

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

def list(songs)
  songs.each_with_index do |ele, idx|
    puts "#{idx + 1}. #{ele}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  answer = gets.chomp
  
  i = 0
  songs.each_with_index do |ele, idx|
    if answer == ele || answer.to_i == idx+1
      puts "Playing #{ele}"
      i += 1
    end
  end
  
  if i == 0
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  i = 0
  while i < 2 do 
    puts "Please enter a command:"
    command = gets.chomp
    if command == 'help'
      help
    elsif command == 'list'
      list(songs)
    elsif command == 'play'
      play(songs)
    elsif command == 'exit'
      exit_jukebox
      i = 2
    end
  end
end
  

  
