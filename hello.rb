class User

	def initialize(name)
		@name = name
	end

	def sayHi
		puts "hi! I am #{@name}"
	end
end


tom = User.new("tom")
tom.sayHi