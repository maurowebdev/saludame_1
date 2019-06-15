require 'sinatra'
#require 'sinatra/reloader'

get '/' do
  unless params[:nombre]
    "Hola desconocido!"
  else
    "Hola #{params[:nombre].to_s.capitalize}!"
  end
  #erb :index
end

get '/makers/:nombre' do |nombre|
    "<h1>Hola #{nombre.to_s.capitalize}!</h1>"
  #erb :index
end
