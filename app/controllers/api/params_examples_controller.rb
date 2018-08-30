class Api::ParamsExamplesController < ApplicationController

	def query_params_method
		input_value = params["message"]
		@message = "The message is #{input_value}"
		@second_message = params["second_message"]
		render 'query_params.json.jbuilder'
	end

end
