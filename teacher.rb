require_relative 'person'

class Teacher < Person
  def initialize(age:, specialization:, name: 'Unknown', parent_permission: true)
    super(age: age, parent_permission: parent_permission, name: name)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
