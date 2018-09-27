require 'sinatra'
set :bind, '0.0.0.0'
get '/' do
"Bienvenidos a mi appweb"
end
get '/empleado/:id' do
"Empleado número: #{params}"
end