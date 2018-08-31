class Api::ParamsExamplesController < ApplicationController

	def query_params_method
		input_value = params["message"]
		@message = "The message is #{input_value}"
		@second_message = params["second_message"]
		render 'query_params.json.jbuilder'
	end

	def name_method
		@name = params["name"].upcase
		@message = "Hey your name doesn't start with A!"
		# if your name starts with A, display message
		if @name.starts_with?("A")
			@message = "Hey your name starts with A!"
		end
		render 'name.json.jbuilder'
	end

	def guess_game_method
		number = 12
		user_guess = params["user_guess"].to_i
		if user_guess > number
			@message = "Guess lower!"
		elsif user_guess < number
			@message = "Guess higher!"
		else
			@message = "You win!"
		end
		render 'guess_game.json.jbuilder'
	end

	def segment_params_method
		input_value = params["tacocat"]
		@message = "The url segment is #{input_value}"
		render 'segment_params.json.jbuilder'
	end

	def body_params_method
		input_value = params["password"]
		@message = "The password is #{input_value}"
		render 'body_params.json.jbuilder'
	end

end






















































