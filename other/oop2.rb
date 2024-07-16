# frozen_string_literal: true

class Vehicle
        @@num_cars = 0
        @@num_trucks = 0

        attr_reader :year, :colour, :make, :model

        def initialize(year, colour, make, model)
                @year = year
                @colour = colour
                @make = make
                @model = model
                puts "#{make} #{model} created."
        end

        def to_s
                "A #{colour} #{make} #{model} from #{year}."
        end

        def self.garage
                puts "You have #{@@num_cars}"\
                " car#{@@num_cars == 1 ? '' : 's'}" \
                " and #{@@num_trucks}"\
                " truck#{@@num_trucks == 1 ? '' : 's'}" \
                ' in your garage.'
        end

        def age
                puts "Your #{make} is #{years_old} years old."
        end

        private

        def years_old
                Time.now.year - year
        end
end

class Car < Vehicle
        def initialize(year, colour, make, model)
                super(year, colour, make, model)
                @@num_cars += 1
        end
end

class Truck < Vehicle
        def initialize(year, colour, make, model)
                super(year, colour, make, model)
                @@num_trucks += 1
        end
end

wah = Car.new(2007, 'blue', 'Honda', 'Civic')
heck = Car.new(1993, 'white', 'Nissan', 'Micra')
oof = Truck.new(2017, 'black', 'Ford', 'F150')

Vehicle.garage

wah.age
