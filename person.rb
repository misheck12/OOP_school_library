class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'unknown', parent_permissions: true)
    @id = Random.ran(1...1000)
    @name = name
    @age = age
    @parent_permissions = parent_permissions
  end

  def validate_name
    @name = @Corrector.correct_name(@name)
  end
  def can_use_services?
    of_age? || parent_permission == true
  end

  private :of_age?
  def of_age?
    @age >= 18
  end
end

person = Person.new(100, 'mishecklivingi')
perso.validate_name

puts person.name
