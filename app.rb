require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get '/square/:number' do
    @square_number = params[:number].to_i * params[:number].to_i
    @square_number.to_s
  end

  get '/say/:number/:phrase' do
    @string = params[:phrase] * params[:number].to_i
    @string.to_s
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @string = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    @string.to_s
  end

  get '/:operation/:number1/:number2' do
    @string_operation = "#{params[:number1]} #{params[:operation]} #{params[:number2]}"
      end

end