get '/' do
  @grandma = params[:grandma]
  # Look in app/views/index.erb
  erb :index
end

post '/grandma' do
	if request.xhr?
		if params[:user_input] == params[:user_input].upcase
			@grandma = "No, not since 1983."
		else
			@grandma = "Speak up, sonny!"
		end
		erb :grandma_says, layout: false
	else
		redirect to('/?grandma=#{@grandma}')
	end
end
