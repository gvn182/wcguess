<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="Home.aspx.cs" Inherits="WCguess.Home" ClientIDMode="Static" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Styles/jquery.countdown.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/jquery.plugin.js" type="text/javascript"></script>
    <script src="Scripts/jquery.countdown.js" type="text/javascript"></script>
    <script src="Scripts/jquery.countdown-pt-BR.js" type="text/javascript"></script>
    <link href="Styles/Home.css" rel="stylesheet" type="text/css" />
    <link href="Styles/font-awesome.css" rel="stylesheet" type="text/css" />
    <script>
        $(function () {

            var austDay = new Date();
            austDay = new Date(austDay.getFullYear(), 5, 12);
            $('#defaultCountdown').countdown({ until: austDay });
        });
    </script>
    <div class="home">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center" style="color: White;">
                    <h2>
                        Já fez a sua aposta? A copa do mundo começará em:</h2>
                </div>
            </div>
            <div class="row">
                <div style="height: 90px; width: 800px; background-color: transparent; border: none;
                    color: White; font-size: 40px; margin: 0 auto 0 auto;" id="defaultCountdown">
                </div>
            </div>
            <div class="row">
                <div class="col-md-12" style="width: 300px; margin: 0 auto 0 auto;">
                    <a class="btn-opaco" href="Guess.aspx"><span>APOSTAR</span></a>
                </div>
            </div>
            <hr>
            <div class="row" style="color: White">
                <div class="col-md-12">
                    <h2 class="title">
                        Quer mais pontos?</h2>
                    <p>
                        Indique amigos e ganhe 1 ponto para cada amigo que se cadastrar.</p>
                    <p>
                        Compartilhe o link abaixo e para cada pessoas que se cadastrar com o <b>facebook</b>,
                        usando seu link, você recebe um ponto a mais.</p>
                    <p id="PShare" class="share-link" style="margin:0 auto 0 auto;" runat="server">
                        <span>
                            <asp:Label ID="lblMyLink" style="margin-left:50px" runat="server"></asp:Label>
                            <a style="float:right" href="http://www.facebook.com/sharer.php?s=100&p[title]=World Cup Guess&p[summary]=Aposte os resultados da copa do mundo de 2014 e ganhe premios, e gratis!&p[url]=http://www.wcguess.com&p[images][0]=http://www.wcguess.com/Styles/images/background.jpg"
                                target="_blank">
                                <asp:Image ID="imgFacebook" Style="cursor: pointer;" ImageUrl="~/Styles/Images/facebook.png"
                                    runat="server" /></a></span></p>
                                    <br />
                    <p>
                        Então não perca tempo, espalhe seu link, chame seus amigos, assim você tem mais
                        chandes de ganhar.</p>
                </div>
            </div>
        </div>
        <script>
            (function (d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0]; if (d.getElementById(id)) return;
                js = d.createElement(s); js.id = id; js.src = "//connect.facebook.net/pt_BR/all.js#xfbml=1";
                fjs.parentNode.insertBefore(js, fjs);
            } (document, 'script', 'facebook-jssdk'));
        </script>
        <div id="fb-root">
        </div>
        <div class="fb-like" data-href="https://developers.facebook.com/docs/plugins/" data-width="500"
            data-layout="standard" data-action="like" data-show-faces="true" data-share="true">
        </div>
    </div>
</asp:Content>
