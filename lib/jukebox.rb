def help
  puts "help"
  puts "list"
  puts "play"
  puts "exit"
end

def play(songs)
  puts "Please enter a song number or name"
  input = gets.chomp
  if input.to_i >= 1 && input.to_i < songs.length
    puts "playing #{songs[input.to_i - 1]}"
  elsif songs.include?(input)
    puts "playing #{songs.select {|song| song == input} }"
  else
    puts "Invalid input, please try again"
  end
    
end

def list(songs)
  songs.length.times do |i|
    puts "#{i + 1}. #{songs[i]}"
  end
end

def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  help
  puts "Please enter a command"
  input = gets.chomp.downcase
  case input
  when "help"
    help
  when "play"
    play(songs)
  when "list"
    list(songs)
  when "exit"
    exit
  end
end
