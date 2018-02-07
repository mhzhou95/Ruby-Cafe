require 'sinatra'

get '/' do 
	erb :home
end

get '/about' do
	erb :about
end

get '/menu' do 
	erb :menu
end

get '/reservations' do
	erb :reservations
end

get '/contact' do
	erb :contact
end
