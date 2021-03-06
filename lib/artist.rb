class Artist
    attr_accessor :name
    @@song_count = 0
    def initialize(name)
        @name = name
        @songs = []
    end
    def add_song(song)
        @songs << song
        song.artist = self
    end
    def songs
       Song.all.each do |song|
        song.artist == self
       end
    end
    
    def add_song_by_name(name) 
        song = Song.new(name) 
        @songs << song
        song.artist = self     
    end

    def self.song_count
        Song.all.count
    end
end