require('sinatra')
require('sinatra/reloader')

get('/') do
  @friend = "Jessica"
  erb(:letter)
end

get('/photos') do
  erb(:photos)
end

get('/australia') do
  @sender = "Jane"
  @recipient = "Jessica"
  erb(:australia)
end

get('/form') do
  erb(:form)
end

get('/card') do
  @sender = params.fetch('sender')
  @recipient = params.fetch('recipient')
  erb(:card)
end
