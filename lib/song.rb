class Song
    attr_accessor :name, :artist, :genre # create attr_access. for name, artist, and genre so that we can access
    @@count = 0 # begin count at 0, b/c when you start there are none
    @@artists = [] # begin a new array to hold all the artists
    @@genres = [] # begin a new array to hold all the genres

    def initialize(name, artist, genre) # takes in 3 arg, name, artist, genre
        @name = name # initialize name
        @artist = artist # initialize artist
        @genre = genre # initialize genre
        @@count += 1 # incre. count by 1 when new is initialized
        @@genres << genre # add a new genre to the genres array when new is initialized
        @@artists << artist # add a new artist to array when a new artist is initialized
    end

    def self.count # class method for .count
        @@count# returns the total num of songs created 
    end

    def self.genres # returns an array of all the genres existing songs
       @@genres.uniq # should only contain unique, no duplicates 
    end

    def self.artists
        @@artists.uniq # returns array of all artists of existing songs, only unique/no duplicates 
    end

    def self.genre_count
        genre_count = {} # returns a hash {} keys are genre names, each genre name key
        @@genres.each do |genre| # need to iterate over @@genres and populate a hash w/ key/value pairs
            if genre_count[genre] #if hash contains a particular genre then incre. 1
                genre_count[genre] += 1
            else # or else create new key/value
                genre_count[genre] = 1
            end
        end
        genre_count # return the count 
    end

    def self.artist_count # do the same as above but for artists
        artist_count = {}
        @@artists.each do |artist|
            if artist_count[artist]
                artist_count[artist] += 1
            else
                artist_count[artist] = 1
            end
        end
        artist_count
    end
end