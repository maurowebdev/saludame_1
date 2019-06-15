require 'sinatra'
require 'sinatra/reloader'

get '/' do
  unless params[:nombre]
    "<h1>Hola desconocido!</h1>"
  else
    "<h1>Hola #{params[:nombre]}!"
  end
  #erb :index
end
