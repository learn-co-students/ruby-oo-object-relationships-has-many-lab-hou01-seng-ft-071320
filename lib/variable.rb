require 'pry'
require_relative './artist'
require_relative './author'
require_relative './post'
require_relative './song'

elton = Artist.new("Elton John")
queen = Artist.new("Queen")

song1 = elton.add_song_by_name("Your Song")
song2 = queen.add_song_by_name("Bohemian Rhapsody")
song3 = elton.add_song_by_name("Tiny Dancer")
song4 = queen.add_song_by_name("Don't Stop Me Now")




alexandre = Author.new("Alexandre Dumas")
miguel = Author.new("Miguel de Cervantes")

post1 = alexandre.add_post_by_title("ThreeMusqueteers")
post2 = miguel.add_post_by_title("DonQuixote")
post3 = miguel.add_post_by_title("LaGitanilla")
post4 = alexandre.add_post_by_title("TheFencingMaster")


binding.pry