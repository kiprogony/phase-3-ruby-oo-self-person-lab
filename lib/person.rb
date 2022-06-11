# your code goes here

class Person
  attr_accessor :bank_account
  attr_reader :name, :hygiene, :happiness

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(number)
    @happiness = if number > 10
                    10
                  elsif number < 0
                    0
                  else
                    number
                  end
  end

  def hygiene=(number)
    @hygiene = if number > 10
      10
    elsif number < 0
      0
    else
      number
    end
  end

  def clean?
    self.hygiene > 7
  end

  def happy?
    self.happiness > 7
  end
  
  def get_paid(amount)
    self.bank_account += amount
    "all about the benjamins"
  end

  def take_bath
    self.hygiene +=4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end
end

# person = Person.new
# person.name