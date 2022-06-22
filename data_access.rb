require 'json'

def read_people
  file = File.read('people.json') if File.exist?('people.json')
  people = JSON.parse(file) unles file.chomp.empty?
  $application.people = people&.map { |person|
    if person['class_instance'] == 'Student'
      student = Student.new(person['age'], )
end