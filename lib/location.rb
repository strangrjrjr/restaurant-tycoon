class Location

    attr_reader :location
    attr_accessor :restaurant, :rent, :address
    @@all = []

    def initialize(address)
        @address = address
        @@all << self
    end

    def self.all
        @@all
    end

    def self.all_addresses
        result = []
        @@all.each do |location|
            result << location.address
        end
        result
    end
end
