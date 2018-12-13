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
				[ 'Clientes', 'Total' ], [ 'Atendidos', 2406 ],
				[ 'Não atendidos', 713 ]

		]);

		var options = {

			backgroundColor : '#BDBDBD',
			title : 'Clientes atendidos e não atendidos',
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

		var chart = new google.visualization.PieChart(document
				.getElementById('piechart'));

		chart.draw(data, options);
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
		var data = google.visualization.arrayToDataTable([ [ 'SW', 'Total' ],
				[ 'Parceiras', 92 ], [ 'Não parceiras', 42 ], ]);

		var options = {
			title : 'Total SW (estados atendidos) x Total SW parceiras',
			pieHole : 0.4,
			backgroundColor : 'transparent'
		};

		var chart = new google.visualization.PieChart(document
				.getElementById('donutchart'));
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
				[ "UF", "Faturamento", {
					role : "style"
				} ], [ "AC", 64300000, "#6B11D2" ],
				[ "BA", 126600000, "#00FF00" ], [ "DF", 122500000, "#0000FF" ],
				[ "ES", 55600000, "#6A4C4C" ], [ "MG", 138900000, "#174375" ],
				[ "PB", 103800000, "#1081D5" ], [ "PR", 157100000, "#800000" ],
				[ "RJ", 221100000, "#A6061E" ], [ "RS", 118100000, "#DAF608" ],
				[ "SC", 65700000, "#DD03AA" ], [ "SP", 291300000, "#7C81A7" ]

		]);

		var view = new google.visualization.DataView(data);
		view.setColumns([ 0, 1, {
			calc : "stringify",
			sourceColumn : 1,
			type : "string",
			role : "annotation"
		}, 2 ]);

		var options = {
			title : "Faturamento por Estado",
			width : 700,
			height : 500,
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

<script type="text/javascript">
	google.charts.load("current", {
		packages : [ "corechart" ]
	});
	google.charts.setOnLoadCallback(drawChart);
	function drawChart() {
		var data = google.visualization.arrayToDataTable([
				[ "UF", "Total clientes", {
					role : "style"
				} ], [ "AC", 207, "#6B11D2" ], [ "BA", 216, "#00FF00" ],
				[ "DF", 185, "#0000FF" ], [ "ES", 205, "#6A4C4C" ],
				[ "MG", 231, "#174375" ], [ "PB", 198, "#1081D5" ],
				[ "RJ", 224, "#A6061E" ], [ "RS", 246, "#DAF608" ],
				[ "SC", 205, "#DD03AA" ], [ "SP", 285, "#7C81A7" ] ]);

		var view = new google.visualization.DataView(data);
		view.setColumns([ 0, 1, {
			calc : "stringify",
			sourceColumn : 1,
			type : "string",
			role : "annotation"
		}, 2 ]);

		var options = {
			title : "Quantidade de clientes por estado",
			width : 700,
			height : 500,
			bar : {
				groupWidth : "80%"
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
		'packages' : [ 'bar' ]
	});
	google.charts.setOnLoadCallback(drawChart);

	function drawChart() {
		var data = google.visualization
				.arrayToDataTable([
						[ 'Tipo comercio', 'Total', 'Clientes', 'Não clientes' ],
						[ 'Combustiveis', 902, 685, 217 ],
						[ 'Estacionamento', 853, 665, 188 ],
						[ 'Hotel', 577, 421, 156 ],
						[ 'Supermercado', 787, 635, 152 ] ]);

		var options = {
			chart : {
				title : 'Cliente x Não clientes (por tipo de comercio)',
				subtitle : '',
			},
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
		packages : [ "corechart" ]
	});
	google.charts.setOnLoadCallback(drawChart);
	function drawChart() {
		var data = google.visualization.arrayToDataTable([ [ 'UF', 'quantia' ],
				[ 'UFs atendidas', 11 ], [ 'UFs não atendidas', 16 ] ]);

		var options = {
			legend : 'none',
			pieSliceText : 'label',
			title : 'UF atendida x UF não atendida',
			pieStartAngle : 100,
		};

		var chart = new google.visualization.PieChart(document
				.getElementById('piechart1'));
		chart.draw(data, options);
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
				[ "Região", "Total", {
					role : "style"
				} ], [ "Norte", 207, "#e6005c" ],
				[ "Clientes potenciais", 71, "#e60000" ], [ "", , "" ],
				[ "Nordeste", 414, "#00cc00" ],
				[ "Clientes potenciais", 135, "#e60000" ], [ "", , "" ],
				[ "Centro-Oeste", 185, "#FFA500" ],
				[ "Clientes potenciais", 51, "#e60000" ], [ "", , "" ],
				[ "Sudeste", 967, "#ADD8E6" ],
				[ "Clientes potenciais", 301, "#e60000" ], [ "", , "" ],
				[ "Sul", 633, "#66CDAA" ],
				[ "Clientes potenciais", 165, "#e60000" ], [ "", , "" ] ]);

		var view = new google.visualization.DataView(data);
		view.setColumns([ 0, 1, {
			calc : "stringify",
			sourceColumn : 1,
			type : "string",
			role : "annotation"
		}, 2 ]);

		var options = {
			title : "Clientes por região",
			width : 900,
			height : 400,
			bar : {
				groupWidth : "95%"
			},
			legend : {
				position : "none"
			},
		};
		var chart = new google.visualization.ColumnChart(document
				.getElementById("columnchart_values1"));
		chart.draw(view, options);
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
				[ "Região", "Total", {
					role : "style"
				} ], [ "SW AC", 9, "#00b300" ], [ "Parceiras", 5, "##0000e6" ],
				[ "Não são parceiras", 4, "#e60000" ], [ "", , "" ],

				[ "SW BA", 11, "#00b300" ], [ "Parceiras", 7, "##0000e6" ],
				[ "Não são parceiras", 4, "#e60000" ], [ "", , "" ],

				[ "SW DF", 9, "#00b300" ], [ "Parceiras", 4, "##0000e6" ],
				[ "Não são parceiras", 5, "#e60000" ], [ "", , "" ],

				[ "SW ES", 10, "#00b300" ], [ "Parceiras", 3, "##0000e6" ],
				[ "Não são parceiras", 7, "#e60000" ], [ "", , "" ],

				[ "SW MG", 12, "#00b300" ], [ "Parceiras", 7, "##0000e6" ],
				[ "Não são parceiras", 5, "#e60000" ], [ "", , "" ],

				[ "SW PB", 10, "#00b300" ], [ "Parceiras", 8, "##0000e6" ],
				[ "Não são parceiras", 2, "#e60000" ], [ "", , "" ],

				[ "SW PR", 11, "#00b300" ], [ "Parceiras", 9, "##0000e6" ],
				[ "Não são parceiras", 2, "#e60000" ], [ "", , "" ],

				[ "SW RJ", 15, "#00b300" ], [ "Parceiras", 12, "##0000e6" ],
				[ "Não são parceiras", 3, "#e60000" ], [ "", , "" ],

				[ "SW RS", 13, "#00b300" ], [ "Parceiras", 8, "##0000e6" ],
				[ "Não são parceiras", 10, "#e60000" ], [ "", , "" ],

				[ "SW SC", 13, "#00b300" ], [ "Parceiras", 8, "##0000e6" ],
				[ "Não são parceiras", 5, "#e60000" ], [ "", , "" ],

				[ "SW SP", 21, "#00b300" ], [ "Parceiras", 14, "##0000e6" ],
				[ "Não são parceiras", 7, "#e60000" ], [ "", , "" ]

		]);

		var view = new google.visualization.DataView(data);
		view.setColumns([ 0, 1, {
			calc : "stringify",
			sourceColumn : 1,
			type : "string",
			role : "annotation"
		}, 2 ]);

		var options = {
			backgroundColor : '#BDBDBD',
			title : "Software House por região ",
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
		var chart = new google.visualization.ColumnChart(document
				.getElementById("columnchart_values1_sw"));
		chart.draw(view, options);
	}
</script>




</head>

<body>

	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div id="loader"></div>
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

	<div class="container-fluid">
		<div class="form-group col-md-12" id="apre">
			<div class="row">
				<h1 id="falec">Painel de controle</h1>
			</div>
		</div>
		<div class="dropdown">
			<button class="btn btn-primary dropdown-toggle" type="button"
				data-toggle="dropdown" id="uf">
				Software House <span class="caret"></span>
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
			<div class="form-group col-md-7">

				<div id="columnchart_values1_sw"
					style="width: 1550px; height: 700px;"></div>



			</div>




			<div class="form-group col-md-12">
				<br> <br> <br> <br> <br>
				<div id="piechart" style="width: 1550px; height: 500px;"></div>

			</div>
		</div>




	</div>



	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>

</html>