require('pry-byebug')
require_relative("../models/album")
require_relative("../models/artist")

Album.delete_all()
Artist.delete_all()


artist1 = Artist.new({
  "name" => "David Bowie"
  })

artist2 = Artist.new({
  "name" => "Depeche Mode"
  })

artist2.save()
artist1.save()

album1 = Album.new({
  "title" => "101",
  "genre" => "Electronica",
  "artist_id" => artist2.id
  })

album2 = Album.new({
  "title" => "Outside",
  "genre" => "Art Rock",
  "artist_id" => artist1.id 
  })

album3 = Album.new({
  "title" => "Scary Monster",
  "genre" => "Art Rock",
  "artist_id" => artist1.id
  })

album1.save()
album2.save()
album3.save()
binding.pry
nil