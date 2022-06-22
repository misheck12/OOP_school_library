require 'json'

def read_people
  file = File.read('people.json') if File.exist?('people.json')
  people = JSON.parse(file) unles file.chomp.empty?
  $application.people = people&.map { |person|
    if person['class_instance'] == 'Student'
      student = Student.new(person['age'], person['classroom'], person['name'], person['parent_permission'])
      student.id = person['id']
      @application.people.push(student)
    else 
      teacher = Teacher.new(person['age'], person['specialization'], person['name'])
      teacher.id = person['id']
      @application.people.push(teacher)
    end
  }
end