<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="MeusGrupos.aspx.cs" Inherits="WCguess.MeusGrupos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script>

        window.fbAsyncInit = function () {
            FB.init({
                appId: '424011274398245', // App ID
                status: true, // check login status
                cookie: true, // enable cookies to allow the server to access the session
                xfbml: true  // parse XFBML
            });

            FB.Event.subscribe('auth.authResponseChange', function (response) {
                if (response.status === 'connected') {
                    // the user is logged in and has authenticated your
                    // app, and response.authResponse supplies
                    // the user's ID, a valid access token, a signed
                    // request, and the time the access token 
                    // and signed request each expire
                    var uid = response.authResponse.userID;
                    var accessToken = response.authResponse.accessToken;

                    Signup(accessToken);

                    // TODO: Handle the access token

                } else if (response.status === 'not_authorized') {
                    window.location = 'Home.aspx';
                } else {
                    window.location = 'Login.aspx';
                    // the user isn't logged in to Facebook.
                }
            });
        };


        (function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = "//connect.facebook.net/pt_BR/all.js#xfbml=1";
            fjs.parentNode.insertBefore(js, fjs);
        } (document, 'script', 'facebook-jssdk'));

        function getUrlVars() {
            var vars = [], hash;
            var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
            for (var i = 0; i < hashes.length; i++) {
                hash = hashes[i].split('=');
                vars.push(hash[0]);
                vars[hash[0]] = hash[1];
            }
            return vars;
        }
        function Signup(TheToken) {

            PageMethods.RegisterUser(TheToken, onSucess, onError);

            function onSucess(result) {
                $('#divLoading').hide();
                if (result.length > 1) {
                    $('#divSemRank').hide();
                    $('#divAllRanks').show();
                    FillFields(result);
                }
                else {
                    $('#divSemRank').show();
                    $('#divAllRanks').hide();
                }
            }

            function onError(result) {
                alert(result.get_message());
            }
        }

        function FillFields(ListRank) {
            for (var i = 0; i < ListRank.length; i++) {
                var Posicao = ListRank[i].Posicao;
                var Facebook_id = ListRank[i].Facebook_id;
                var Nome = ListRank[i].Nome;
                var Pontos = ListRank[i].Pontos;
                var Id_usuario = ListRank[i].Id_usuario;
                AddNewTR(i + 1, Facebook_id, Nome, Pontos, Id_usuario);
            }
        }
        function AddNewTR(Posicao, Facebook_id, Nome, Pontos, Id_usuario) {
            $('#TableRank tr:last').after('<tr><td><div class="rank">' + Posicao + '</div></td><td width="300px"> <div class="rank-user"> <img class="profile-img" z-index="1000" src="https://graph.facebook.com/' + Facebook_id + '/picture?type=normal" style="height: 52px; width: 52px;" /><span class="top-ranking-name" z-index="5">' + Nome + '</span><span class="top-ranking-points">' + Pontos + '</span></div> </td>');
        }
    </script>
    <asp:ScriptManager ID="ScriptManager1" EnablePageMethods="true" runat="server">
    </asp:ScriptManager>
    <div id="fb-root">
    </div>
    <div id="divLoading" style="height: 50px; width:50px; margin:auto auto auto auto;">
        <img alt="" src="Styles/Images/loading_home.gif" />
    </div>
    <div id="divSemRank" style="background-color: rgba(130,130,130,0.3); color: #FFF;
        height: 300px; display: none" class="col-lg-7">
        <h2>
            Aqui você poderá encontrar o rank dos seus amigos assim que os jogos da copa começarem.
            Chame seus amigos, quanto mais gente melhor!?</h2>
        Não se esqueça de user seu link para chamar os amigos, assim você ganha 1 ponto
        para cada amigo que se cadastrar usando o <b>facebook.</b>
        <br />
        <br />
        Este é seu link:
        <br />
        <br />
        <b>
            <asp:Label ID="lblMyLink" runat="server"></asp:Label>
        </b>
        <br />
        <br />
        <table style="width: 100px; margin-top: 90px; margin-left: auto; margin-right: auto;
            display: none;">
            <tr>
                <td>
                    <a href="http://www.facebook.com/sharer.php?s=100&p[title]=World Cup Guess&p[summary]=Aposte os resultados da copa do mundo de 2014 e ganhe premios, e gratis!&p[url]=http://www.wcguess.com&p[images][0]=http://www.wcguess.com/Styles/images/background.jpg"
                        target="_blank">
                        <asp:Image ID="imgFacebook" Style="cursor: pointer" ImageUrl="~/Styles/Images/facebook.png"
                            runat="server" />
                    </a>
                </td>
                <td id="TdTwitter" runat="server">
                </td>
            </tr>
        </table>
    </div>
    <div id="divAllRanks" style="display:none" class="col-md-5 col-lg-4 top-ranking">
        <table id="TableRank" style="width: 100%">
            <tr>
                <td colspan="3" style="border-bottom: 1px solid white;">
                    <h4>
                        Ranking</h4>
                </td>
            </tr>
            <tr>
            </tr>
        </table>
    </div>
</asp:Content>
