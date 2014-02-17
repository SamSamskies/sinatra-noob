require 'sinatra'
require './models/coach'

get '/' do
  @coaches = Coach.all

  erb :index
end

get '/coaches/new' do
  erb :new
end

post '/coaches' do
  puts params

  Coach.create(params)

  redirect '/'
end

get '/coaches/:id' do
  @coach = Coach.find(params[:id].to_i)

  # coaches = Coach.all
  # @coach = coaches[ params[:id].to_i - 1 ]

  erb :show
end


# get '/guillaume' do
#   "Bonjour, guillaume"
# end

# get '/:name' do
#   "Hello, #{params[:name]}"
# end