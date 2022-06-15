require_relative 'basedecorator'
require_relative 'book'
require_relative 'capitalizedecorator'
require_relative 'classroom'
require_relative 'nameable'
require_relative 'person'
require_relative 'rental'
require_relative 'student'
require_relative 'teacher'
require_relative 'trimmerdecorator'

class App
  def initialize
    @people = [Student.new(age: 22, name: 'Emily', classroom: Classroom.new(256))]
    @books = [Book.new('Year of the Witch', 'Temperance Alda')]
    @rentals = [[Rental.new('06-14-22', @books[0], @people[0])]]
    @classroom = Classroom.new(1)
  end

  def list_books
    @books.each_with_index { |book, index| puts "#{index}) #{book.title} by #{book.author}" }
  end

  def list_people
    @people.each_with_index do |person, index|
      if person.classroom
        type = 'Student'
      else
        type = 'Teacher'
      end
      puts "#{index}) [#{type}] Name: #{person.name}, ID: #{person.id} Age: #{person.age}"
    end
  end

  def create_person
    puts 'Do you want to create a student (1) or a teacher (2)? [Input the number]:'
    type = gets.chomp.to_i
    while type != 1 && type != 2
      puts 'Please enter a valid option:'
      type = gets.chomp.to_i
    end
    print 'Age: '
    age = gets.chomp
    print 'Name: '
    name = gets.chomp
    if type == 1
      print 'Has parent permission? [Y/N] '
      letter = gets.chomp
      while letter != 'y' && letter != 'n' && letter != 'Y' && letter != 'N'
        print 'Please enter a valid option:'
        letter = gets.chomp
      end
      if letter == 'y' || letter == 'Y'
        permission = true
      else
        permission = false
      end
      new_person = Student.new(age: age, name: name, parent_permission: permission, classroom: @classroom)
    else
      print 'Specialization: '
      specialization = gets.chomp
      new_person = Teacher.new(age: age, name: name, specialization: specialization)
    end
    @people.push(new_person)
    @rentals.push([])
    puts 'Person created successfully'
  end

  def create_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    new_book = Book.new(title, author)
    @books.push(new_book)
    puts 'Book created successfully'
  end

  def create_rental
    puts 'Select a book from the following list by number'
    list_books
    book_index = gets.chomp.to_i
    while !@books[book_index]
      puts 'Please enter a valid option:'
      book_index = gets.chomp.to_i
    end
    puts 'Select a person from the following list by number (not id)'
    list_people
    person_index = gets.chomp.to_i
    while !@people[person_index]
      puts 'Please enter a valid option:'
      person_index = gets.chomp.to_i
    end
    puts 'Date: '
    date = gets.chomp
    new_rental = Rental.new(date, @books[book_index], @people[person_index])
    @rentals[person_index].push(new_rental)
    puts 'Rental created successfully'
  end

  def list_rentals
    list_people
    print 'ID: '
    id = gets.chomp.downcase
    found = false
    @people.each do ||
    end
  end
end
