# This is the Person class, parent of student and teacher class
class Person
  def initialize(id, age, name = 'Unknown', parent_permission: true)
    @id = id
    @age = age
    @name = name
    @parent_permission = parent_permission
  end

  attr_reader :id
  attr_accessor :age, :name

  def can_use_services?
    is_of_age? || @parent_permission
  end

  private

  def is_of_age?
    age > 18
  end
end
