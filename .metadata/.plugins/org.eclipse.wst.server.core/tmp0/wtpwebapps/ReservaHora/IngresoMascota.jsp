<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PET SMILE</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet" href="/css/styles.css">

</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container">
	    <a class="navbar-brand" href="#">PET SMILE</a>
	    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
	    	<span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse" id="navbarNav">
		    <ul class="navbar-nav ml-auto">
			    <li class="nav-item active">
			    	<li class="nav-item">
			    		<a class="nav-link" href="index.jsp">Login</a>
					</li>
					<li class="nav-item">
			    		<a class="nav-link" href="Inicio.jsp">inicio</a>
					</li>
					<li class="nav-item">
			    		<a class="nav-link" href="IngresoDatos.jsp">Ingreso Datos</a>
					</li>
					<li class="nav-item">
			    		<a class="nav-link" href="IngresoMascota.jsp">Ingreso Mascota</a>
					</li>
			    	<li class="nav-item">
			    		<a class="nav-link"  href="AgendarHora.jsp">Agendar Hora</a>
					</li>
			     </li>
					<li class="nav-item">
				    	<a class="nav-link" href="index.jsp">Cerrar sesi�n</a>
				    	
					</li>
			</ul>
	   	</div>  
	  	</div>
	</nav>
	
  	<div class="container p-6">
    <div class="row">
        <div class="col-md-6 mx-auto">
            <div class="card text-center">
                <div class="card-header">
                    <h3>Ingresar Datos Mascota </h3>
                </div>
                <div class="card-body">
                    <form action="" method="POST">
                    
                        <div class="form-group">
                        	 <label>Rut Due�o:</label>
                            <input type="integer" name="rutDueno"  class="form.control" autofocus>
                        </div>
                        
                        <div class="form-group">
                        	<label>Tipo de Mascota:</label>
                            <input type="text" name="tMascota" class="form.control">
                        </div>
                        
                        <div class="form-group">
                        	<label>Edad:</label>
                            <input type="integer" name="edad" class="form.control">
                        </div>
                        <div class="form-group">
                        	<label>NombreMascota:</label>
                            <input type="text" name="nMascota" class="form.control">
                        </div>
                        <div class="form-group">
                            <a href="AgendarHora.jsp" class="btn btn-success btn-block"> Ingresar Datos Mascota</a>
                            <a href="Inicio.jsp"> Volver</a>
                        </div>
                    </form>
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