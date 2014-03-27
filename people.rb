#Step 4
class Person
	def initialize(name)
		@name = name
	end

#Step 5
  	def greeting
    	puts "Hello, my name is #{@name}"
  	end
end


#Steps 1, 2, 3
class Student < Person

	def learn
		puts "I get it!"
	end
end

class Instructor < Person

	def teach
		puts "Everything in Ruby is an Object."
	end
end

#Step 6
person1 = Instructor.new("Chris")
person1.greeting

#Step 7
person2 = Student.new("Cristina")
person2.greeting

#Step 8
person1.teach
person2.learn

person2.teach
#This failed because "teach" is only defined under the "Instructor" class, not the parent "Person" class.