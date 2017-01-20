class System

  attr_reader :bodies

  def initialize (bodies=[])
    @bodies = bodies
  end

  # Give System an instance method called add which will add a celestial body to the list.
  def add (body)
    @bodies << body
  end

  # Need an instance method called total_mass which should add up the mass of all the bodies in bodies, and return it.
  def total_mass
    total_mass=0
    @bodies.each do |body|
      total_mass += body.mass
    end
    return total_mass
  end
end

class Body

  attr_reader :name, :mass

  def initialize (name, mass)
    @name = name
    @mass = mass
  end

end

class Planets < Body
  attr_accessor :day, :year
  def initialize (name, mass, day, year)
    @name = name
    @mass = mass
    @day = day
    @year = year
  end
end

class Stars < Body
  attr_accessor :type
  def initialize (name, mass, type)
    @name = name
    @mass = mass
    @type = type
  end
end

class Moons < Body
  attr_accessor :month, :planet
  def initialize (name, mass, month, planet)
    @name = name
    @mass = mass
    @month = month
    @plant = planet
  end
end
