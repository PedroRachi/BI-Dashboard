<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<link href="css/style.css" rel="stylesheet">
<link href="css/TelaPrincipal.css" rel="stylesheet">
<script type="text/javascript" src="js/funcao.js"></script>




<nav class="navbar navbar-default">
	<div class="container-fluid">


		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">MGVP</a>

		</div>

	</div>

	<div class="login-box">
		<div class="login-box-interno">
			<div class="login-box-label">
				Login

				<div class="alert-info" role="alert">
					<h9>${mensagem}</h9>
				</div>

			</div>

			<div id="main" class="container">
				<h3 class="page-header">Login</h3>

				<form action="controller.do" method="post">
					<div class="row col-md-12">
						<div class="form-group">
							<div class="input-group col-md-4">
								<div class="input-group-addon">
									<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
								</div>
								<input type="cnpj" name="username" id="username"
									class="form-control" maxlength="20" placeholder="CNPJ" required />
							</div>
						</div>
						<div class="form-group">
							<div class="input-group col-md-4">
								<div class="input-group-addon">
									<span class="glyphicon glyphicon-option-horizontal"
										aria-hidden="true"></span>
								</div>
								<input type="password" name="password" id="password"
									class="form-control" placeholder="Senha" required />
							</div>
						</div>
					</div>
					<div class="row col-md-12">
						<button type="submit" class="btn btn-primary" name="command"
							value="FazerLogin">
							<span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
							Logar
						</button>



						</br> </br> <a href="#" data-toggle="modal" data-target="#delete-modal">Esqueci
							minha senha</a> </br> </br>


					</div>



				</form>
			</div>

		</div>

	</div>


</nav>



