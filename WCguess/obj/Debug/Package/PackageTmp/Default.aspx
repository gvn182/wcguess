<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WCguess.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Pratt - Free Bootstrap 3 Theme">
    <meta name="author" content="Alvarez.is - BlackTie.co">
    <title>World Cup Guess</title>
    <link rel="stylesheet" type="text/css" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" />
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,300,700' rel='stylesheet' type='text/css' />

    <link href="Styles/main.css" rel="stylesheet" type="text/css" />
   
    <script src="Scripts/jquery.min.js" type="text/javascript"></script>
    <script src="Scripts/smoothscroll.js" type="text/javascript"></script>    
</head>
<body data-spy="scroll" data-offset="0" data-target="#navigation">
    <!-- Fixed navbar -->
	    <div id="navigation" class="navbar navbar-default navbar-fixed-top">
	      <div class="container">
	        <div class="navbar-header">
	          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	          </button>
	          <a class="navbar-brand" href="#"><b>WCGUESS</b></a>
	        </div>
	        <div class="navbar-collapse collapse">
	          <ul class="nav navbar-nav pull-right">
                    <li><a href="Login.aspx?Cadastro=true" class="">Cadastre-se</a></li>
                    <li><a href="Login.aspx" class="">Entrar</a></li>
                </ul>
	        </div><!--/.nav-collapse -->
	      </div>
	    </div>


	<section id="home" name="home"></section>
	<div id="headerwrap">
	    <div class="container">
	    	<div class="row centered">
	    		<div class="col-lg-12">
					<h1><b>GUESS</b></h1>
					<h3>Entende de futebol? Faça seu chute!</h3>
					<br>
	    		</div>
	    		
	    		<div class="col-lg-2">
	    			<h5>Dê seu chute</h5>
	    			<p>Aqui seu chute vale prêmios. Acerte o resultado do jogo e acumule pontos.</p>
	    			<img class="hidden-xs hidden-sm hidden-md" src="assets/img/arrow1.png">
	    		</div>
	    		<div class="col-lg-8">
	    			<img class="img-responsive" src="assets/img/app-bg.png" alt="">
	    		</div>
	    		<div class="col-lg-2">
	    			<br>
	    			<img class="hidden-xs hidden-sm hidden-md" src="assets/img/arrow2.png">
	    			<h5>Compartilhe</h5>
	    			<p>Divida seus chutes com seus amigos.</p>
	    		</div>
	    	</div>
	    </div> <!--/ .container -->
	</div><!--/ #headerwrap -->


	<section id="desc" name="desc"></section>
	<!-- INTRO WRAP -->
	<div id="intro">
		<div class="container">
			<div class="row centered">
				<h1>Designed For the 2014 World Cup</h1>
				<br>
				<br>
				<div class="col-md-4">
					<img src="assets/img/intro01.png" alt="">
					<h3>Chute</h3>
					<p>Acompanhe os jogos, estude os times e faça seu melhor chute.</p>
				</div>
				<div class="col-md-4">
					<img src="assets/img/intro02.png" alt="">
					<h3>Compartilhe</h3>
					<p>Desafie seus amigos!</p>
				</div>
				<div class="col-md-4">
					<img src="assets/img/intro03.png" alt="">
					<h3>Ganhe Prêmios</h3>
					<p>Seus chutes valem prêmios. Acumule pontos e aumente suas chances de ganhar.</p>
				</div>
			</div>
			<br>
			<hr>
	    </div> <!--/ .container -->
	</div><!--/ #introwrap -->
	
	<!-- FEATURES WRAP -->
	<div id="features">
		<div class="container">
			<div class="row">
				<h1 class="centered"></h1>
				<br>
				<div class="col-md-6 centered">
					<img class="centered" src="assets/img/mobile.png" alt="">
                    <div id="carousel-example-generic" class="carousel slide col-md-5" style="z-index:1000; position:absolute; top:160px; left:170px; height:230px;">
					  <!-- Indicators -->
					  <ol class="carousel-indicators">
					    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
					    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
					    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
					    <li data-target="#carousel-example-generic" data-slide-to="3"></li>
					  </ol>
					
					  <!-- Wrapper for slides -->
					  <div class="carousel-inner">
					    <div class="item active" style="height:148px;">
					      <img src="assets/img/ios/WCGUESS.png" alt="" width="160" height="128" style="padding-top: 30px;display:block;position:relative;margin:0 auto;">
					    </div>
					    <div class="item" style="height:148px;">
					      <img src="assets/img/ios/CHUTE.png" alt="" width="200" height="168" style="display:block;position:relative;margin:0 auto;">
					    </div>
					    <div class="item" style="height:148px;">
					      <img src="assets/img/ios/COMPARTILHE.png" alt="" width="160" height="128" style="display:block;position:relative;margin:0 auto;">
					    </div>
					    <div class="item" style="height:148px;">
					      <img src="assets/img/ios/PREMIOS.png" alt="" width="180" height="148" style="display:block;position:relative;margin:0 auto;">
					    </div>
					  </div>
					</div>
				</div>
				<div class="col-md-5">
					<h1>Chute em qualquer lugar</h1>
					<br>
                    <p class="lead">Baixe nosso app e acompanhe seus chutes e os resultados dos jogos onde você estiver.</p>
				
		                <br>
                                <img src="assets/img/appstore.png" width="280" height="97" alt="Disponível na AppStore">
		        </div>
			</div>
		</div><!--/ .container -->
	</div><!--/ #features -->
	
	
	<!--<section id="showcase" name="showcase"></section>
	<div id="showcase">
		<div class="container">
			<div class="row">
				<h1 class="centered">Some Screenshots</h1>
				<br>
				<div class="col-lg-8 col-lg-offset-2">
					<div id="carousel-example-generic" class="carousel slide">
					  
					  <ol class="carousel-indicators">
					    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
					    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
					  </ol>
					
					  <div class="carousel-inner">
					    <div class="item active">
					      <img src="assets/img/item-01.png" alt="">
					    </div>
					    <div class="item">
					      <img src="assets/img/item-02.png" alt="">
					    </div>
					  </div>
					</div>
				</div>
			</div>
			<br>
			<br>
			<br>	
		</div> 
	</div>	-->


	<section id="contact" name="contact"></section>
	<div id="footerwrap">
		<div class="container">
            <div class="col-md-12 text-center">
                <a href="http://simpleideas.com.br/" target="_blank"><img src="assets/img/LOGO@2x.png" width="236" height="111"></a>
            </div>
			<!-- <div class="col-lg-5">
				<h3>Address</h3>
				<p>
				Av. Greenville 987,<br/>
				New York,<br/>
				90873<br/>
				United States
				</p>
			</div>
			
			<div class="col-lg-7">
				<h3>Dúvidas? Fale conosco</h3>
				<br>
				<form role="form" action="#" method="post" enctype="plain"> 
				  <div class="form-group">
				    <label for="name1">Seu Nome</label>
				    <input type="name" name="Name" class="form-control" id="name1" placeholder="Seu Nome">
				  </div>
				  <div class="form-group">
				    <label for="email1">Email</label>
				    <input type="email" name="Mail" class="form-control" id="email1" placeholder="Email">
				  </div>
				  <div class="form-group">
				  	<label>Sua Mensagem</label>
				  	<textarea class="form-control" name="Message" rows="3"></textarea>
				  </div>
				  <br>
				  <button type="submit" class="btn btn-large btn-success">ENVIAR</button>
				</form>
			</div> -->
		</div>
	</div>
	<!-- <div id="c">
		<div class="container">
			<p>Created by <a href="http://www.blacktie.co">BLACKTIE.CO</a></p>
		
		</div>
	</div> -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    
    <script src="Scripts/bootstrap.js" type="text/javascript"></script>
	<script>
	    $('.carousel').carousel({
	        interval: 3500
	    })
	</script>
  </body>
</html>
