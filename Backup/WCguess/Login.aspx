<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WCguess.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-1.8.3.js" type="text/javascript"></script>
    <script src="Scripts/jquery-ui-1.10.3.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery.watermark.js" type="text/javascript"></script>
    <script src="Scripts/Facebook.js" type="text/javascript"></script>
    <link href="Styles/Default.css" rel="stylesheet" type="text/css" />
    <link href="Scripts/jquery-ui-1.10.3.custom.css" rel="stylesheet" type="text/css" />
</head>
<body style="background-image: url('Styles/Images/background.jpg')">
      <script>
        function RegisterModal() {
            $("#modalEditar").dialog({
                appendTo:'form',
                resizable: false,
                autoOpen: false,
                modal: true,
                width: 360,
                height: 500,
                title: 'Novo Cadastro',
                buttons: {
            }
        });

    }

    $(document).ready(function () {
        //RegisterModal();
        $('#txtEmail').watermark('email');
        $('#txtSenha').watermark('senha');
        $('#txtNascimento').watermark('nascimento');
        $('#txtSobreNome').watermark('sobrenome');
        $('#txtNome').watermark('nome');
        $('#txtConfirmaSenha').watermark('confirmação senha');

        $('#btnLogin').click(function () {
            if ($('#txtEmail').val() == "" || $('#txtSenha').val() == "") {
                alert('Preencha o login e a senha');
                return false;
            }
            else
                return true;
        });

        $('#btnCadastro').click(function () {
            if ($('#txtEmailCadastro').val() != "" && $('#txtConfirmaSenha').val() != "" && $('#txtNome').val() != "" && $('#txtSobrenome').val() != "" && $('#txtNascimento').val() != "") {
                return true;
            }
            alert('Todos os campos são obrigatórios');
            return false;
        });
    });



    window.fbAsyncInit = function () {
        FB.init({
            appId: '424011274398245', // App ID
            status: false, // check login status
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
                alert('not authorized');
                // the user is logged in to Facebook, 
                // but has not authenticated your app
            } else {
                alert('not logged');
                // the user isn't logged in to Facebook.
            }
        });
    };


    //        (function (d, s, id) {
    //            var js, fjs = d.getElementsByTagName(s)[0];
    //            if (d.getElementById(id)) return;
    //            js = d.createElement(s); js.id = id;
    //            js.src = "//connect.facebook.net/pt_BR/all.js#xfbml=1";
    //            fjs.parentNode.insertBefore(js, fjs);
    //        } (document, 'script', 'facebook-jssdk'));


    function Signup(TheToken) {

        PageMethods.RegisterUser(TheToken, onSucess, onError);

        function onSucess(result) {
            //alert(result);
            window.location = "Guess.aspx";
        }

        function onError(result) {
            alert(result.get_message());
        }
    } 
    </script>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true">
    </asp:ScriptManager>
    <table style="width: 300px; height: 250px; margin-top:200px; margin-left:auto; margin-right:auto">
        <tr>
            <td>
                <div class="fb-login-button" scope="email,user_birthday,user_location" data-width="300"
                    data-height="50" data-size="xlarge" data-show-faces="false">
                    Login com facebook
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <center style="color: White">
                    ou</center>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtEmail" Width="100%" Height="40px" Font-Size="18px" runat="server"
                    CssClass="TextBox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtSenha" TextMode="Password" Width="100%" Height="40px" Font-Size="18px" runat="server"
                    CssClass="TextBox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="chkAccept" runat="server" />
                <a style="color: White">Eu aceito os </a><a style="color: White" href="#">Termos e condições</a>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnLogin" Width="100%" runat="server" Height="40px" Text="Login"
                    CssClass="Button" onclick="btnLogin_Click" />
            </td>
        </tr>
    </table>


    <div id="fb-root">
    </div>
    <br />
    <div id="modalEditar" style="width: 450px; height:300px; border: 1px solid white; display:none"
        runat="server">
        <table style="width: 300px;">
            <tr>
                <td>
                    <asp:TextBox ID="txtEmailCadastro" Enabled="false" Width="100%" Height="40px" Font-Size="18px"
                        runat="server" CssClass="TextBox"></asp:TextBox>
                </td>
            </tr>
               <tr>
                <td>
                    <asp:TextBox ID="txtConfirmaSenha" TextMode="Password" Width="100%" Height="40px" Font-Size="18px"
                        runat="server" CssClass="TextBox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtNome" Width="100%" Height="40px" Font-Size="18px" runat="server"
                        CssClass="TextBox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtSobreNome" Width="100%" Height="40px" Font-Size="18px" runat="server"
                        CssClass="TextBox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="ddSexo" CssClass="TextBox" Width="100%" Height="40px" runat="server">
                        <asp:ListItem>M</asp:ListItem>
                        <asp:ListItem>F</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtNascimento" Width="100%" Height="40px" Font-Size="18px" runat="server"
                        CssClass="TextBox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="ddPais" Width="100%" CssClass="TextBox" Height="40px" runat="server">
                        <asp:ListItem>Brasil</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnCadastro"  Width="100%" runat="server" Height="40px" 
                        Text="Cadastrar" CssClass="Button" 
                        onclick="btnCadastro_Click" />
                </td>
            </tr>
        </table>
    </div>


    </form>
</body>
</html>
