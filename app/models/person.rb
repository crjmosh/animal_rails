class Person < ApplicationRecord
	# validations
	validates_presence_of :name

	# callbacks
		# after_create - runs once after model is created
		# before_create - runs once before model is created
		# after_save - runs each time after a model is saved
		# before_save - runs each time before a model is saved
		# after_initialize - runs once after a Person.new instance
		# before_initialize - runs before instance gets created in memory
		# after_validiate - runs after all of the validations
		# before_validate - runs before all validations

	# associations
		# has_one
		# has_many
		# belongs_to
		# has_many_through
		# has_one_through
	has_many :animals, dependent: :destroy

	# instance methods
	def info
		"#{name} is of age: #{age}"
	end

	# class methods -or- scopes, have 'self.'
	#can be combined: Person.all.by_name.by_age
	
	# to call: Person.all.by_name
	def self.by_name
		order(:name)
	end

	# Person.all.by_age
	def by_age
		order(:age)
	end

end
