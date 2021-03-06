class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end


  def Song.create
  new_song = Song.new
  new_song.save
  new_song
  end

def Song.new_by_name(song)
  new_song_by_name = Song.new
  new_song_by_name.name = song
  new_song_by_name.save
  new_song_by_name
end

def Song.create_by_name(song)
  new_song_by_name = Song.new
  new_song_by_name.name = song
  new_song_by_name.save
  new_song_by_name
end


def Song.find_by_name(song)
  @@all.find {|temp| temp.name == song}
end

def Song.find_or_create_by_name(song)
  Song.create_by_name(song)
  Song.find_by_name(song)
end


def Song.alphabetical
@@all.sort_by {|alpha| alpha.name}
end

def Song.new_from_filename (filename)
  data = filename.chomp(".mp3").split(" - ")
  artist_name = data[0]
  name = data[1]
  new_song = self.new
  new_song.artist_name = artist_name
  new_song.name = name
  new_song
end

def Song.create_from_filename (filename)
  data = filename.chomp(".mp3").split(" - ")
  artist_name = data[0]
  name = data[1]
  new_song = self.new
  new_song.artist_name = artist_name
  new_song.name = name
  new_song.save
end


def Song.destroy_all
  @@all.clear
end


end
