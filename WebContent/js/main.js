 function comprobarEspacios(){
	 var nombre = document.getElementById("idNombreRegistro").value;
	 //var apellidos = document.getElementById("idApellidosRegistro").value;
	 //alert(nombre);
	 
	 if (/^\s+$/.test(nombre)) {
		 //document.getElementById("one").innerHTML="Complete el nombre ..ahmed";
		 $('#idNombreRegistro').parent().addClass('has-error');
		 $('#idNombreRegistro').parent().removeClass('has-success');
	 }
	 else{
		 $('#idNombreRegistro').parent().addClass('has-success');
		 $('#idNombreRegistro').parent().removeClass('has-error');

	 }
 }

