class Roster
    attr_accessor :players
end

class Player
    attr_accessor :name, :position
    def initialize(name, position)
        @name = name
        @position = position
    end
end

moore = Player.new("Maya Moore", "Forward")
taurasi = Player.new("Diana Tauraise", "Guard")
moore2 = Player.new("Maya Moore2", "Forward")

roster1 = Roster.new
roster1.players = [moore2, taurasi, moore]
roster2 = Roster.new

if roster1.players.first.position == "Forward"
    puts "#{roster1.players.first.name}"
end

if roster2.players&.first&.position == "Forward"
    puts "#{roster2.players.first.name}"
end