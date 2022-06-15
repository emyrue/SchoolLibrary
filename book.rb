class Book
  attr_accessor :title, :author

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(rental)
    return if @rentals.include?(rental)

    @rentals.push(rental)
  end
end
