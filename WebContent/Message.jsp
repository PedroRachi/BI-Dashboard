<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/Tela.css" rel="stylesheet">
<script type="text/javascript" src="js/funcao.js"></script>




<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Message</title>



    	<script language="javascript">
			function valida(){
				if(valida_cpf(document.getElementById('cpf').value))
					alert('CPF Válido');
				else
					alert('CPF Inválido');
			}
			
			function valida_cpf(cpf){
				  var numeros, digitos, soma, i, resultado, digitos_iguais;
				  digitos_iguais = 1;
				  if (cpf.length < 11)
						return false;
				  for (i = 0; i < cpf.length - 1; i++)
						if (cpf.charAt(i) != cpf.charAt(i + 1))
							  {
							  digitos_iguais = 0;
							  break;
							  }
				  if (!digitos_iguais)
						{
						numeros = cpf.substring(0,9);
						digitos = cpf.substring(9);
						soma = 0;
						for (i = 10; i > 1; i--)
							  soma += numeros.charAt(10 - i) * i;
						resultado = soma % 11 < 2 ? 0 : 11 - soma % 11;
						if (resultado != digitos.charAt(0))
							  return false;
						numeros = cpf.substring(0,10);
						soma = 0;
						for (i = 11; i > 1; i--)
							  soma += numeros.charAt(11 - i) * i;
						resultado = soma % 11 < 2 ? 0 : 11 - soma % 11;
						if (resultado != digitos.charAt(1))
							  return false;
						return true;
						}
				  else
						return false;
			}
		</script>
		
</head>
<body>

	<div id="main" class="container">
		<div id="top" class="row">
			<div class="col-ls-12">

				<h3><%=request.getAttribute("Message")%></h3>
			</div>
		</div>


		<div class="row">
			<div class="col-ls-12">
				<button class="btn btn-primary" type="submit" name="" value="">Voltar</button>
				
				
				
				<input name="cpf" type="text" id="cpf" maxlength="11" /> 
    <input type="button" name="validar" id="validar" value="Validar CPF" onClick="valida()" />
          
			</div>
		</div>

	</div>



</body>
</html>