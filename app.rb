require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    (params[:number].to_i**2).to_s
  end

  get '/say/:number/:phrase' do
    (params[:phrase] * params[:number].to_i)
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    str = "#{params[:word1]}"
    (2..5).each { |i| str += " #{params[:"word#{i}"]}"  }
    str + '.'
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
    when "multiply"
      params[:number1].to_i * params[:number2].to_i
    when "divide"
      params[:number1].to_i / params[:number2].to_i
    when "add"
      params[:number1].to_i + params[:number2].to_i
    when "subtract"
      params[:number1].to_i - params[:number2].to_i
    end.to_s
  end

end