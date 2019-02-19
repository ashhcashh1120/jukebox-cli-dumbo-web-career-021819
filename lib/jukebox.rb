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
	puts "I accept the following commands:",
		"- help : displays this help message",
		"- list : displays a list of songs you can play",
		"- play : lets you choose a song to play",
		"- exit : exits the program"
end

def list (songs)
  songs.each_with_index do |song, i|
		puts "#{i+1}. #{song}"
	end
end

def play(songs)
  response = gets.chomp
  songs.each_with_index do |song, i|
    if response.to_i == (i+1) || response == song
      puts "Playing #{song}"
      break
    else
      puts "Invalid input, please try again"
      break
  end
end
end

def wait_for_command
  loop do
    print "Please enter a command: "
    command = gets.chomp.downcase.strip
    case command
      when 'exit'
        exit_jukebox
        break
      when 'help'
        help
      when 'list'
        list(all_songs)
      when 'play'
        play(all_songs)
    end
  end
end

def run(songs)
  puts "Please enter your name:"
  users_name = gets.chomp
  puts say_hello(users_name)
  puts "Here are the commands available to you."
  help
  wait_for_command
end

def exit_jukebox
  puts "Goodbye!"
end
