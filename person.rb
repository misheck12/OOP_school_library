class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'unknown', parent_permissions: true)
    @id = Random.ran(1...100000)
    @name = name
    @age = age
    @parent_permissions = parent_permissions
  end
  private :of_age?
  def of_age?
    @age >= 18
  end

  def can_use_services?
    of_age? || parent_permission == true
  end
end
