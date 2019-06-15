require 'sinatra'
#require 'sinatra/reloader'

get '/' do
  unless params[:nombre]
    "Hola desconocido!"
  else
    "Hola #{params[:nombre]}!"
  end
  #erb :index
end
