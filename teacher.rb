require_relative './person'

class Teacher < Person
  def initialize(specification, age, name = 'unknown', parent_permissions: true)
    super(age, name, parent_permissions)
    @specification = specification
  end

  def can_use_services?
  end
end
