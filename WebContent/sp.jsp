<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Administrador - Cadastros</title>
<link href="css/TelaPrincipal.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link type="text/css" rel="stylesheet" href="css/style.css">
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
	google.charts.setOnLoadCallback(drawChart);

	function drawChart() {

		var data = google.visualization.arrayToDataTable([
				[ 'Estado', 'Qtd Software House parceira' ],
				[ 'Parceiras', 10 ], [ 'Não parceiras', 7 ]

		]);

		var options = {
			title : 'Quantidade de Software House no estado',
			backgroundColor : '#BDBDBD'
		};

		var chart = new google.visualization.PieChart(document
				.getElementById('piechart'));

		chart.draw(data, options);
	}
</script>

<script type="text/javascript">
	google.charts.load("current", {
		packages : [ "corechart" ]
	});
	google.charts.setOnLoadCallback(drawChart);
	function drawChart() {
		var data = google.visualization.arrayToDataTable([
				[ "Element", "Software houses", {
					role : "style"
				} ], [ "Não são Parceiras", 7, "color:#a6a6a6" ],
				[ "Quantidade de parceiras", 14, "color: #3366ff" ],
				[ "Total Software Houses", 21, "color: #ff3333" ] ]);

		var view = new google.visualization.DataView(data);
		view.setColumns([ 0, 1, {
			calc : "stringify",
			sourceColumn : 1,
			type : "string",
			role : "annotation"
		}, 2 ]);

		var options = {
			title : "SW Atendidas x Não Atendidas",
			width : 600,
			height : 400,
			bar : {
				groupWidth : "95%"
			},
			legend : {
				position : "none"
			},
		};
		var chart = new google.visualization.BarChart(document
				.getElementById("barchart_values"));
		chart.draw(view, options);
	}
</script>

<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
	google.charts.load('current', {
		packages : [ 'corechart' ]
	});
	google.charts.setOnLoadCallback(drawChart);
	function drawChart() {
		var oldData = google.visualization.arrayToDataTable([
				[ 'Comercio', 'Total' ], [ 'Estacionamento', 256070 ],
				[ 'Hotel', 108034 ], [ 'Supermercado', 127101 ],
				[ 'Combustiveis e lubrificantes ', 81863 ] ]);

		var options = {
			title : 'Quantidade de vendas por estabelecimento'
		};

		var chartBefore = new google.visualization.PieChart(document
				.getElementById('piechart_before'));

		chartBefore.draw(oldData, options);

		var diffData = chartDiff.computeDiff(oldData, newData);
		chartDiff.draw(diffData, options);
	}
</script>

<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
	google.charts.load('current', {
		'packages' : [ 'bar' ]
	});
	google.charts.setOnLoadCallback(drawChart);

	function drawChart() {
		var data = google.visualization.arrayToDataTable([
				[ 'Tipo comercio', 'Total', 'Clientes', 'Não clientes' ],
				[ 'Combustiveis', 124, 92, 32 ],
				[ 'Estacionamento', 101, 75, 26 ],

				[ 'Supermercado', 90, 73, 17 ], [ 'Hotel', 63, 45, 18 ] ]);

		var options = {
			chart : {
				title : 'Cliente x Não clientes (por tipo de comercio)',
				subtitle : '',
			},
			backgroundColor : '#BDBDBD',
			bars : 'horizontal' // Required for Material Bar Charts.
		};

		var chart = new google.charts.Bar(document
				.getElementById('barchart_material'));

		chart.draw(data, google.charts.Bar.convertOptions(options));
	}
</script>

<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
	google.charts.load("current", {
		packages : [ 'corechart' ]
	});
	google.charts.setOnLoadCallback(drawChart);
	function drawChart() {
		var data = google.visualization.arrayToDataTable([
				[ "Software House", "Faturamento", {
					role : "style"
				} ], [ "Atende tudo Ltda", 40251, "#b87333" ],
				[ "Lógica Ltda", 90921, "#6495ED" ],
				[ "Verity Ltda", 18648, "#008B8B" ],
				[ "k2 Ltda", 10831, "#FF4500" ],
				[ "KVPS Ltda", 75642, "#556B2F" ],
				[ "Matrix Ltda", 21648, "#00BFFF" ],
				[ "Azul Ltda", 13546, "#B22222" ],
				[ "Flor de lis Ltda", 100635, "#483D8B" ],
				[ "Trampa muito Ltda", 135648, "#4F4F4F" ],
				[ "Márus Ltda", 115015, "#cc66ff" ],
				[ "Oslane Ltda", 14648, "#33ffff" ],
				[ "Horóscopo Ltda", 12648, "#00cc00" ],
				[ "Capricho Ltda", 90932, "#ff8c1a" ],
				[ "Tattoo Ltda", 45236, "#00008B" ] ]);

		var view = new google.visualization.DataView(data);
		view.setColumns([ 0, 1, {
			calc : "stringify",
			sourceColumn : 1,
			type : "string",
			role : "annotation"
		}, 2 ]);

		var options = {
			title : "TEF por Software House",
			backgroundColor : '#BDBDBD',
			width : 700,
			height : 400,
			bar : {
				groupWidth : "65%"
			},
			legend : {
				position : "none"
			},
		};
		var chart = new google.visualization.ColumnChart(document
				.getElementById("columnchart_values"));
		chart.draw(view, options);
	}
</script>

<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
	google.charts.load("current", {
		packages : [ "corechart" ]
	});
	google.charts.setOnLoadCallback(drawChart);
	function drawChart() {
		var data = google.visualization.arrayToDataTable([
				[ 'Comercio', 'Qtd' ], [ 'Clientes', 285 ],
				[ 'Não clientes', 93 ] ]);

		var options = {
			title : 'Quantidade de clientes no estado',
			pieHole : 0.4,
			backgroundColor : '#BDBDBD'
		};

		var chart = new google.visualization.PieChart(document
				.getElementById('donutchart'));
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
		<div id="loader"></div>
		<div class="form-group col-md-12" id="apre">
			<div class="row">
				<h1 id="falec">Painel de controle</h1>
			</div>
		</div>
		<div class="dropdown">
			<button class="btn btn-primary dropdown-toggle" type="button"
				data-toggle="dropdown" id="uf">
				SP <span class="caret"></span>
			</button>
			<ul class="dropdown-menu">
				<li><a href="IndexAdm.jsp">Todos</a></li>
				<li><a href="ac.jsp">AC</a></li>
				<li><a href="#">BA</a></li>
				<li><a href="df.jsp">DF</a></li>
				<li><a href="es.jsp">ES</a></li>
				<li><a href="#">MG</a></li>
				<li><a href="#">PB</a></li>
				<li><a href="#">PR</a></li>
				<li><a href="#">RJ</a></li>
				<li><a href="#">RS</a></li>
				<li><a href="#">SC</a></li>
				<li><a href="sp.jsp">SP</a></li>
			</ul>
		</div>
		<br>
		<div id="div3" style="display: none;">
			<div class="form-group col-md-12">
				<div class="form-group col-md-7">
					<div id="columnchart_values" style="width: 600px; height: 200px;"></div>
				</div>
				<div class="form-group col-md-5">
					<div class="row">
						<div id="barchart_material" style="width: 600px; height: 400px;"></div>

					</div>
				</div>
			</div>

			<div class="form-group col-md-12">
				<br> <br> <br>

				<div></div>

			</div>



			<div class="form-group col-md-12">
				<div class="form-group col-md-7">
					<div id="piechart" style="width: 600px; height: 300px;"></div>
				</div>
				<div class="form-group col-md-5">
					<div class="row">
						<div id="donutchart" style="width: 600px; height: 300px;"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
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