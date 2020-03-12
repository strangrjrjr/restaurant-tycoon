
class Restaurant

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def create_location(address)
        new_location = Location.new(address)
        new_location.restaurant = self
        new_location
    end
end
