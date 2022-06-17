class Book
  attr_accessor :bob, :john, :rentals

  def initialize(bob, john)
    @bob = bob
    @john = john
    @rentals = []
  end

  def add_rental(person, date)
    Rental.new(date, self, person)
  end
end
