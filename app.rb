require 'sinatra'
require 'json'
require 'open-uri'

get '/' do
    erb :new
end

post '/' do
    if params[:plus]
        @plus = (params[:value1].to_f + params[:value2].to_f).to_s
        @value1 = (params[:value1].to_f).to_s
        @value2 = (params[:value2].to_f).to_s
        @operator = "+"
    erb :new
    elsif params[:minus]
        @minus = (params[:value1].to_f - params[:value2].to_f).to_s
        @value1 = (params[:value1].to_f).to_s
        @value2 = (params[:value2].to_f).to_s
        @operator = "-"
    erb :new
    elsif params[:multiply]
        @multiply = (params[:value1].to_f * params[:value2].to_f).to_s
        @value1 = (params[:value1].to_f).to_s
        @value2 = (params[:value2].to_f).to_s
        @operator = "×"
    erb :new
    else
        @divided = (params[:value1].to_f / params[:value2].to_f).to_s
        @value1 = (params[:value1].to_f).to_s
        @value2 = (params[:value2].to_f).to_s
        @operator = "÷"
    erb :new
    end
end