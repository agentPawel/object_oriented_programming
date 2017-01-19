class Paperboy

  attr_reader :name, :experience, :earnings

  def initialize (name, experience = 0, earnings = 0)
    @name = name
    @experience = experience
    @earnings = earnings
  end

  def quota
    return (@experience/2) + 50
  end

  def deliver (start_address, end_address)
    if start_address < end_address
      addresses_visited = end_address - start_address + 1
      if addresses_visited >= quota
        money_earned = (quota * 0.25) + ((addresses_visited - quota) * 0.50)
      else
        money_earned = addresses_visited * 0.25 - 2
      end
    else
      addresses_visited = start_address - end_address + 1
        if addresses_visited >= quota
          money_earned = (quota * 0.25) + ((addresses_visited - quota) * 0.50)
        else
          money_earned = addresses_visited * 0.25 - 2
        end
    end
    @experience += addresses_visited
    @earnings += money_earned
    money_earned
  end

  def report
    return "I'm #{@name}, I've delivered #{@experience} papers and I've earned #{@earnings} so far!"
  end
end
