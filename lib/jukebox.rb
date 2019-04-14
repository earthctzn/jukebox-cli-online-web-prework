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

#def say_hello(name)
#  "Hi #{name}!"
#end

#puts "Enter your name: "
#users_name = gets.chomp

#puts say_hello(users_name)

def help
 puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(my_songs)
#this method is different! Collect the keys of the my_songs hash and 
  #list the songs by name
  my_songs.collect { |song, file| puts "#{song}"}
end

puts "Please enter a song name or number:"
  requested_song = gets.chomp
  songs.each_with_index do |song, i|
    if requested_song == song || requested_song.to_i == (i+1)
      puts "Playing #{song}"
      return
    end
  end
  puts "Invalid input, please try again"
end


def exit_jukebox
  puts "Goodbye" #this method is the same as in jukebox.rb
end


