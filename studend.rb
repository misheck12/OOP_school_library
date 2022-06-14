require_relative './person'

class Student < Person
    def initialize(class_room, age, name = 'unknown', parent_permissions:true)
        super(age, name, parent_permissions)
        @class_room = class_room
    end

    def play_hooky
        "¯\(ツ)/¯"
    end

end