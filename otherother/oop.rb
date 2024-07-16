class Vehicle

        def to_s
                "A #{colour} #{make} #{model} from #{year}."
        end

        def self.fuel_efficiency(miles, gallons)
                puts "#{miles / gallons} mpg."
        end
        
        attr_reader :speed, :make, :engine, :colour, :year, :model

        def initialize(year, colour, make, model)
                @year = year
                @colour = colour
                @make = make
                @model = model
                @speed = 0
                @engine = false
        end

        @@numCars = 0
        @@numTrucks = 0

        def self.how_many
                puts "You have #{@@numCars} car#{@@numCars == 1 ? '' : 's'} and #{@@numTrucks} truck#{@@numTrucks == 1 ? '' : 's'}."
        end
end

class MyCar < Vehicle
        NUMBER_OF_DOORS = 4

        def initialize(year, colour, make, model)
                @@numCars += 1
        end

        def spray_bay
                puts 'Please enter your desired colour:'
                @colour = gets.chomp
                puts "*BRSHSHHHH* Your #{model} is now #{colour}, cool!"
        end

        def check_colour
                puts "Your #{make} #{model} is #{colour}."
        end

        def engine_switch
                @engine = !@engine
                puts "Engine is now #{engine == false ? 'off' : 'running'}."
        end

        def speed_up
                @speed += 10
                self.curr_speed
        end

        def slow_down
                @speed >= 10 ? @speed -= 10 : @speed
                self.curr_speed
        end

        def curr_speed
                puts "Your #{make} is going #{speed}kmh#{speed >= 50 ? '!' : ''}"
        end

        def engine_status
                puts "Your engine is currently #{engine == false ? 'off' : 'running'}."
        end
end

class MyTruck < Vehicle
        NUMBER_OF_DOORS = 2
        
        def initialize
                @@numTrucks += 1
        end
end

# wah = MyCar.new('2007', 'blue', 'Honda', 'Civic')

# hon = MyCar.new('1995', 'red', 'Nissan', 'Micra')

# twu = MyTruck.new('2013', 'black','Ford', 'F150')

puts wah

Vehicle.how_many