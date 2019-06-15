require 'sinatra'
#require 'sinatra/reloader'

# get '/' do
#   unless params[:nombre]
#     "<h1>Hola desconocido!</h1>"
#   else
#     "<h1>Hola #{params[:nombre].to_s.capitalize}!</h1>"
#   end
#   #erb :index
# end
get "/" do
  unless params[:nombre]
    <<-HTML
      <h1>Hola desconocido!</h1>
    HTML
  else
    if params[:nombre].empty?
      <<-HTML
        <h1>Hola desconocido!</h1>
      HTML
    else
      <<-HTML
        <h1>Hola #{params[:nombre]}!</h1>
      HTML
    end
  end
end


get '/makers/:nombre' do |nombre|
    "<h1>Hola #{nombre.to_s.capitalize}!</h1>"
  #erb :index
end
