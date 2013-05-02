class Test
	require './XYZService'
	require 'date'

	attr_accessor :title, :publish_on, :kind, :personal, :age, :id, :xyz_category_prefix

	def initialize(title, kind)
		@title = title
		@publish_on = Date.today
		@kind = kind
		@age = "12"
		@id = "58965"
		@xyz_category_prefix = "abc"
	end

	def personal?
		true
	end
end