class QuotesController < ApplicationController
	def index
		# Brings in first quote from the database
		@quote = Quote.order("RANDOM()").first
	end
end
