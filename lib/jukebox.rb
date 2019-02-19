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
  input = gets.chomp
  songs.each_with_index do |song, idx|
    if input.to_i == (idx+1) || input == song
      puts "Playing #{song}"
      break
    else
      puts "Invalid input, please try again"
      break
  end
end
end
