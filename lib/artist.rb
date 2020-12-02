class Artist

    attr_accessor :name, :artist, :genre 

    @@all = []

    def initialize(name)
        @name = name
        @@all << self 
    end 

    def songs
        Song.all.select {|song| song.artist == self}
    end 

    def genres
        Song.all.collect {|song| song.genre}
    end 

    def self.all
        @@all
    end 


    def new_song(song, genre)
        Song.new(song, self, genre)
    end 







end 
