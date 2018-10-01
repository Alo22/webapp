require 'sinatra'
require 'sinatra/reloader' if development?

set :bind, '0.0.0.0'

get '/' do
  @titulo="Página de inicio"
   erb :home #vista
end
get '/contacto' do
  @titulo="Página de contacto"
  erb :contacto
end
get '/acercade' do
  @titulo="Página de informacion de la app."
  erb :acercade
end
get '/clientes' do
   @clientes=(1..30).to_a
  erb :clientes
  end
  
 not_found do
 erb :not_found
 end