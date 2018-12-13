<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Administrador - Cadastros</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link type="text/css" rel="stylesheet" href="css/style.css">
<link href="css/TelaPrincipal.css" rel="stylesheet">
<link href="css/Carregar.css" rel="stylesheet">

<script src="js/jquery-2.1.3.js"></script>



<script type="text/javascript">
	// Este evendo é acionado após o carregamento da página
	jQuery(window).load(function() {
		//Após a leitura da pagina o evento fadeOut do loader é acionado, esta com delay para ser perceptivo em ambiente fora do servidor.
		jQuery("#loader").delay(500).fadeOut("slow");
	});
</script>

<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script>
	$(document).ready(function() {

		$("#div3").fadeIn(1900);
	});
</script>

<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>

<script type="text/javascript">
	google.charts.load('current', {
		'packages' : [ 'corechart' ]
	});
	google.charts.setOnLoadCallback(drawVisualization);

	function drawVisualization() {
		// Some raw data (not necessarily accurate)
		var data = google.visualization.arrayToDataTable([
				[ 'Meses', 'Combustivel', 'Hotel', 'Estacionamento',
						'Supermercado' ], [ 'AC', 14223, 7121, 20345, 8875 ],
				[ 'BA', 59000, 0, 49000, 100000 ], [ 'DF', 53544, 0, 0, 0 ],
				[ 'ES', 46325, 0, 0, 0 ],
				[ 'MG', 65000, 32500, 150000, 54000 ],
				[ 'PB', 48000, 34000, 27000, 36000 ],
				[ 'PR', 55000, 20000, 57000, 135000 ],
				[ 'RJ', 130000, 57000, 190000, 110000 ],
				[ 'RS', 90000, 0, 52000, 148000 ],
				[ 'SC', 64000, 20000, 35000, 0 ],
				[ 'SP', 190452, 69859, 100489, 310914 ] ]);

		var options = {
			backgroundColor : '#BDBDBD',
			title : 'TEF por tipo de comercio de cada estado parceiro',
			curveType : 'function',
			legend : {
				position : 'bottom'
			},

			hAxis : {
				title : 'Estados'
			},
			seriesType : 'bars',
			series : {
				10 : {
					type : 'line'
				}
			}

		};

		var chart = new google.visualization.ComboChart(document
				.getElementById('chart_div'));
		chart.draw(data, options);
	}
</script>

</head>

<body>

	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"> MGVP </a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="Upload.jsp">Upload</a></li>
					<li><a href="Faturamento.jsp" class="n"> Faturamento </a></li>
					<li><a href="Produto.jsp" class="n"> Software House </a></li>
					<li><a href="IndexAdm.jsp" class="n"> Gráficos</a></li>
					<li><a href="controller.do?command=Logout">Sair</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<br>
	<br>
	<br>

	<div class="container">

		<div class="form-group col-md-12" id="apre">
			<div class="row">
				<h1 id="falec">Upload de arquivos</h1>
			</div>
		</div>
		<div class="alert-danger " role="alert">
					<h1>${mensagem}</h1>
				</div>

		<br>

		<div class="container" id="inicial">
			<div class="form-group col-md-12">
				<div class="form-group col-md-8">
					<div class="row">
						<h3>Não deixe para depois, faça upload do seu arquivo.csv
							agora.</h3>
						<h5>Assim que validado seu painel de controle será atualizado
							e você poderá acompanhar tudo em tempo real pela nossa plataforma</h5>
						<form method="post" id="formularioArquivo" name="formularioArquivo" action="controller.do" enctype="multipart/form-data">
							<br>
							<div>
								<input type="file" name="arquivo" size="50" />
							</div>

							<br>

							<div colspan="2">
								<strong>Escolha o arquivo antes de salvar </strong>
								<button type="submit" class="btn btn-primary" name="command"
									value="Upload">
									<span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
									Salvar
								</button>
							</div>
						</form>
					</div>
				</div>
				<div class="form-group col-md-4" id="apre">
					<div class="row">
						<img src="img/Logo.png" id="logo">
					</div>
				</div>
			</div>

		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>


	<div id="footer">
		<div class="container">
			<div class="row">
				<p>Endereço: Rua Eu Inventei N° 69 - Email: mgvp.usjt@gmail.com
					- Telefone: (11) 4602-8922</p>
			</div>
		</div>
	</div>




	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>

</html>