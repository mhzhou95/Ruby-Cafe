require 'sinatra'
require 'sendgrid-ruby'
include SendGrid

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

get '/thanks' do

@email = params[:email]
@subject = params[:subject]
@content = params[:content]

from = Email.new(email: @email)
to = Email.new(email: 'minghaozhou123@gmail.com')
subject = @subject
content = Content.new(type: 'text/plain', value: @content)
mail = Mail.new(from, subject, to, content)

sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'].to_s)
response = sg.client.mail._('send').post(request_body: mail.to_json)
puts response.status_code
puts response.body
puts response.headers
	erb :aftercontact
end

get "/action_page.php" do 
	erb :aftercontact
end


