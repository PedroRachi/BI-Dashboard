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
	var getJSON = function(url, callback) {
		var xhr = new XMLHttpRequest();
		xhr.open('GET', url, true);
		xhr.responseType = 'json';
		xhr.onload = function() {
			var status = xhr.status;
			if (status === 200) {
				callback(null, xhr.response);
			} else {
				callback(status, xhr.response);
			}
		};
		xhr.send();
	};
	getJSON('http://localhost:8080/rest-json-api/rest/faturamento/lista-geral',
			function(err, data) {
				if (err !== null) {
					alert('Something went wrong: ' + err);
				} else {
					/*alert('Your query count: ' + data);*/

					google.charts.load('current', {
						'packages' : [ 'corechart' ]
					});
					google.charts.setOnLoadCallback(function() {
						drawChart(data);
					});

				}
			});

	function drawChart(data) {

		var data1 = new google.visualization.DataTable();
		data1.addColumn('string', 'Estado');
		data1.addColumn('number', 'combustivel');
		data1.addColumn('number', 'hotel');
		data1.addColumn('number', 'estacionamento');
		data1.addColumn('number', 'supermercado');

		var dataArray = [];

		$.each(data, function(i, obj) {
			dataArray.push([ obj.estado, obj.combustivel, obj.hotel,
					obj.estacionamento, obj.supermercado ]);
		});

		data1.addRows(dataArray);

		var piechart_options = {
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

		var piechart = new google.visualization.ComboChart(document
				.getElementById('chart_div'));
		piechart.draw(data1, piechart_options);

		var barchart_options = {
			title : 'Pedro Mesquita',
			width : 1000,
			height : 800,
			legend : 'none'

		};

		var barchart = new google.visualization.BarChart(document
				.getElementById('barchart_div'));
		barchart.draw(data1, barchart_options);
	}
</script>


<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>

<script type="text/javascript">
	var getJSON1 = function(url, callback) {
		var xhr = new XMLHttpRequest();
		xhr.open('GET', url, true);
		xhr.responseType = 'json';
		xhr.onload = function() {
			var status = xhr.status;
			if (status === 200) {
				callback(null, xhr.response);
			} else {
				callback(status, xhr.response);
			}
		};
		xhr.send();
	};
	getJSON1(
			'http://localhost:8080/rest-json-api/rest/faturamento/lista-geral',
			function(err, data1) {
				if (err !== null) {
					alert('Something went wrong: ' + err);
				} else {
					/*alert('Your query count: ' + data);*/

					google.charts.load('current', {
						'packages' : [ 'corechart' ]
					});
					google.charts.setOnLoadCallback(function() {
						drawChart1(data1);
					});

				}
			});

	function drawChart1(data1) {

		var data2 = new google.visualization.DataTable();
		data2.addColumn('string', 'Estado');
		data2.addColumn('number', 'hotel');

		var dataArray = [];

		$.each(data1, function(i, obj) {
			dataArray.push([
					obj.estado,
					obj.hotel + obj.combustivel + obj.supermercado
							+ obj.estacionamento ]);
		});

		data2.addRows(dataArray);

		var piechart_options = {
			backgroundColor : '#BDBDBD',
			title : 'Percentual de TEF dos comércios de cada estado parceiro',
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

		var piechart = new google.visualization.PieChart(document
				.getElementById('chart_div_hotel'));
		piechart.draw(data2, piechart_options);

		var barchart_options = {
			title : 'Pedro Mesquita',
			width : 1000,
			height : 800,
			legend : 'none'

		};

		var barchart = new google.visualization.BarChart(document
				.getElementById('barchart_div'));
		barchart.draw(data1, barchart_options);
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

	<div class="container-fluid">
		<div id="loader"></div>

		<div class="form-group col-md-12" id="apre">
			<div class="row">
				<h1 id="falec">Painel de controle</h1>
			</div>
		</div>
		<div class="dropdown">
			<button class="btn btn-primary dropdown-toggle" type="button"
				data-toggle="dropdown" id="uf">
				FATURAMENTO <span class="caret"></span>
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

				<div id="chart_div" style="width: 1500px; height: 500px;"></div>



			</div>


			<br> <br> <br> <br> <br> <br>

			<div class="form-group col-md-7">
				<div id="chart_div_hotel" style="width: 1500px; height: 500px;"></div>

			</div>
		</div>



	</div>


	<br>
	<br>
	<br>
	<br>
	<br>





	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>

</html>