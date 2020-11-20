<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PET SMILE</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet" href="styles.css">

</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container">
	    <a class="navbar-brand" href="#">PET SMILE</a>
	    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
	    	<span class="navbar-toggler-icon"></span>
	    </button>
	  	</div>
	</nav>
	
    <div class="container p-6">
    <div class="row">
        <div class="col-md-6 mx-auto">
            <div class="card text-center">
                <div class="card-header">
                    <h3> Inicio Sesión </h3>
                </div>
                <div class="card-body">
                    <form name="formLogin" action="LoginServlet" method="post">
                        <div class="form-group">
                            <input type="text" name="username" placeholder="Usuario" class="form.control">
                        </div>
                        <div class="form-group">
                            <input type="password" name="password" placeholder="Contraseña" class="form.control">
                        </div>
                        <div class="form-group">
                            <input value="Iniciar Sesion" type="submit" />
      						<input type="reset" />
                        </div>
                    </form>
                    <%
						String errorMessage = (String) session.getAttribute("errorMessage");
						if (null !=errorMessage) { %>
						<h4> <%=errorMessage %></h4>
						<%}
					%>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
</body>

</html>