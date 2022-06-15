require_relative 'person'

class Student < Person
  def initialize(age:, classroom:, name: 'Unknown', parent_permission: true)
    super(age: age, parent_permission: parent_permission, name: name)
    @classroom = classroom
  end

  def play_hooky
    '-\\("/)/-'
  end

  def write_classroom(classroom)
    @classroom = classroom
    classroom.add_student(self)
  end
end
