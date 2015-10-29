class QuotesController < ApplicationController
	def index
		# Brings in first quote from the database
		@quote = Quote.order("RANDOM()").first
		$test = "B Mac attack"
	end

	def create
		# Database call to create a quote using the Quote model
		@quote = Quote.create(quote_params)
		if @quote.invalid?
			flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
		end
		redirect_to root_path
	end

	def about
		
	end

	def quote_params
		# Pull the values 'saying' and 'author' from the quote form
		# Adds a bit of security by only permitting 'saying' and 'author' to be pulled from the form
		params.require(:quote).permit(:saying, :author)
	end

end
