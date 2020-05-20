class Drink
    #keep track of drink attributes & save all drinks created
    attr_accessor :id, :name, :instructions, :glass, :category
    @@all = []
    def initialize
        @@all << self
    end

    def self.all
        @@all
    end

end