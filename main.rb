#!/usr/bin/env ruby

require_relative 'app'

def execute(input, app)
  case input.to_i
  when 1
    app.list_books
  when 2
    app.list_people
  when 3
    app.create_person
  when 4
    app.create_book
  when 5
    app.create_rental
  when 6
    app.list_rentals
  else
    break
  end
  gets.chomp
end

def menu
  app = App.new
  loop do
    puts 'Please choose an option by entering a number:'
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts '7 - Exit'
    input = gets.chomp
    while input > 7 || input < 1
      puts 'Please enter a valid option:'
      input = gets.chomp
    end
    execute(input, app)
  end
end

def main
  puts "Welcome to the School Library app!\n"
  menu
  puts 'Thank you for using this app!'
end

main
