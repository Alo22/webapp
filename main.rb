require 'sinatra'

set :bind, '0.0.0.0'

get '/' do
  @titulo="Página de inicio"
   erb :home //vista
end
get '/contacto' do
  @titulo="Pagina de contacto"
  erb :contacto
end

get '/acercade' do
  @titulo="Página de informacion de la app."
  erb :acercade
end

__END__
@@layout
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<title> Ejemplo 2</title>
<ul>
<li><a href="/">Home</a></li>
<li><a href="/contacto">Contacto</a></li>
<li><a href="/acercade">Acerca de la aplicacion</a></li>
</ul>
</head>
<body>
<header>
<h1> ejemplo 2 sinatra</h1>
</header>
<section>
<%=yield%>
</section>
<footer>
</footer>
</body>
</html>
@@home
<h2><%=@titulo%></h2>
<p>En la pagina de inicio...</p>
@@contacto
<h2><%=@titulo%></h2> 
<p>Si quieres mandar correo</p>
@@acercade
<h2><%=@titulo%></h2> 
<p>Esta aplicacion está desarrollado con sinatra</p>
