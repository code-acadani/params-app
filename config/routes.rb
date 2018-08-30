Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"

  namespace :api do
  	# query params
		get "/query_params_url" => "params_examples#query_params_method"
		get "/name_url" => "params_examples#name_method"
		get "/guess_game_url" => "params_examples#guess_game_method"

		# url segment params
		get "/segment_params_url/:tacocat" => "params_examples#segment_params_method"
		get "/guess_segment_url/:user_guess" => "params_examples#guess_game_method"
  end
end
