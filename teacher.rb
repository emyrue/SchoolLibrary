require_relative 'student'

class Teacher < Student
  def initialize(age:, specialization:, name: 'Unknown', parent_permission: true)
    super(age: age, parent_permission: parent_permission, name: name)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
