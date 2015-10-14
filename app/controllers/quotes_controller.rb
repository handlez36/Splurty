class QuotesController < ApplicationController
	def index
		# Brings in first quote from the database
		@quote = Quote.order("RANDOM()").first
	end

	# New action to map to the HTTP actions automatically created within our route
	def new
		@quote = Quote.new
	end
end
