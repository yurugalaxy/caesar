class Vehicle

        @@numCars = 0
        @@numTrucks = 0

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
                puts "You have #{@@numCars}"\
                " car#{@@numCars == 1 ? '' : 's'}" \
                " and #{@@numTrucks}"\
                " truck#{@@numTrucks == 1 ? '' : 's'}" \
                " in your garage."
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
                @@numCars += 1
        end
end

class Truck < Vehicle
        def initialize(year, colour, make, model)
                super(year, colour, make, model)
                @@numTrucks += 1
        end
end

wah = Car.new(2007, 'blue', 'Honda', 'Civic')
heck = Car.new(1993, 'white', 'Nissan', 'Micra')
oof = Truck.new(2017, 'black', 'Ford', 'F150')

Vehicle.garage

wah.age
