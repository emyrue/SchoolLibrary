require_relative 'basedecorator'
require_relative 'capitalizedecorator'
require_relative 'classroom'
require_relative 'nameable'
require_relative 'person'
require_relative 'student'
require_relative 'teacher'
require_relative 'trimmerdecorator'

my_classroom = Classroom.new(256)
my_student = Student.new(age: 22, classroom: my_classroom, name: 'Emily')
