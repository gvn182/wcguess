<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="Default.aspx.cs" Inherits="WCguess.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <script src="Scripts/jquery-1.8.3.js" type="text/javascript"></script>
    <script src="Scripts/jquery-ui-1.10.3.js" type="text/javascript"></script>
    <script src="Scripts/ui.mask.js" type="text/javascript"></script>
    <link href="Styles/Guess.css" rel="stylesheet" type="text/css" />
    <link href="Styles/Oitavas.css" rel="stylesheet" type="text/css" />
    <link href="ss-social-circle.css" rel="stylesheet" type="text/css" />
    <script src="Content.js" type="text/javascript"></script>
    <script language="javascript" type="text/javascript">
        $(document).ready(function () {
            RegisterChange();

            $('#Button1').click(function () {
                return CheckAllFields();
            });
        });

        function RegisterChange() {
            var Fields = $("input");
            Fields.each(function () {
                if ($(this).attr("type") == "text") {
                    $(this).change(function () {
                        if (CheckGrupoFields()) {
                            LoadOitavas();
                        }
                    });
                }
            });
        }
        function CheckAllFields() {
            var Fields = $("input");
            var Retorno = true;
            Fields.each(function () {
                if ($(this).attr("type") == "text") {
                    var TheText = $(this).val();
                    if (TheText == "") {
                        alert('É necessário preencher todos os campos');
                        Retorno = false;
                        return false;
                    }
                }
            });
            return Retorno;
        }
        function CheckGrupoFields() {
            var Fields = $("input");
            var Retorno = true;
            Fields.each(function () {
                if ($(this).attr("type") == "text") {
                    if ($(this).attr("id").length < 13) {
                        var TheText = $(this).val();
                        if (TheText == "") {
                            Retorno = false;
                            return false;

                        }

                    }
                }
            });
            return Retorno;
        }
    </script>
</head>
<body style="background-image: url('Styles/Images/background.jpg')">
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <table style="width: 1024px; margin: auto auto auto auto;">
        <tr>
            <td valign="top">
                <h1 class="title-guess">GUESS</h1>
                <h2 class="subtitle-guess">Quantos pontos você faz?</h2>
            </td>
            <td>
                <div class="div-grupo">
                    <table style="width: 100%" id="tbGrupoA" cellpadding="0" cellspacing="0" runat="server">
                        <tr>
                            <td colspan="5" class="header-grupo">
                                <center>
                                    <b>GRUPO A</b></center>
                            </td>
                        </tr>
                        <tr class="grupo-tr">
                            <td align="center" class="grupo-td">
                                BRA
                                <br />
                                <img id="Img85" runat="server" class="time-table"  src="Styles/Images/flags/Brasil.png" />
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox1" CssClass="input-grupo" />
                            </td>
                            <td class="td-X" valign="top">
                                <span class="span-data">12/06</span>
                                <br />
                                <br />
                                <br />
                                <span class="span-horario">17h</span>
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox2" CssClass="input-grupo" />
                            </td>
                            <td align="center" class="grupo-td">
                                CRO
                                <br />
                                <img id="Img86" runat="server" class="time-table"  src="Styles/Images/flags/Croacia.png" />
                            </td>
                        </tr>
                        <tr>
                            <td class="grupo-td" align="center">
                                MEX
                                <br />
                                <img id="Img87" runat="server" class="time-table"  src="Styles/Images/flags/Mexico.png" />
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox99" CssClass="input-grupo" />
                            </td>
                            <td class="td-X" valign="top">
                                <span class="span-data">13/06</span>
                                <br />
                                <br />
                                <br />
                                <span class="span-horario">13h</span>
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox3" CssClass="input-grupo" />
                            </td>
                            <td class="grupo-td" align="center">
                                CAM
                                <br />
                                <img id="Img88" runat="server" class="time-table"  src="Styles/Images/flags/Camaroes.png" />
                            </td>
                        </tr>
                        <tr>
                            <td class="grupo-td" align="center">
                                BRA
                                <br />
                                <img id="Img89" runat="server" class="time-table"  src="Styles/Images/flags/Brasil.png" />
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox4" CssClass="input-grupo" />
                            </td>
                            <td class="td-X" valign="top">
                                <span class="span-data">17/06</span>
                                <br />
                                <br />
                                <br />
                                <span class="span-horario">16h</span>
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox5" CssClass="input-grupo" />
                            </td>
                            <td class="grupo-td" align="center">
                                MEX
                                <br />
                                <img id="Img90" runat="server" class="time-table"  src="Styles/Images/flags/Mexico.png" />
                            </td>
                        </tr>
                        <tr>
                            <td class="grupo-td" align="center">
                                CRO
                                <br />
                                <img id="Img91" runat="server" class="time-table"  src="Styles/Images/flags/Croacia.png" />
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox6" CssClass="input-grupo" />
                            </td>
                            <td class="td-X" valign="top">
                                <span class="span-data">18/06</span>
                                <br />
                                <br />
                                <br />
                                <span class="span-horario">18h</span>
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox7" CssClass="input-grupo" />
                            </td>
                            <td class="grupo-td" align="center">
                                CAM
                                <br />
                                <img id="Img92" runat="server" class="time-table"  src="Styles/Images/flags/Camaroes.png" />
                            </td>
                        </tr>
                        <tr>
                            <td class="grupo-td" align="center">
                                CRO
                                <br />
                                <img id="Img93" runat="server" class="time-table"  src="Styles/Images/flags/Croacia.png" />
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox8" CssClass="input-grupo" />
                            </td>
                            <td class="td-X" valign="top">
                                <span class="span-data">23/06</span>
                                <br />
                                <br />
                                <br />
                                <span class="span-horario">17h</span>
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox9" CssClass="input-grupo" />
                            </td>
                            <td class="grupo-td" align="center">
                                MEX
                                <br />
                                <img id="Img94" runat="server" class="time-table"  src="Styles/Images/flags/Mexico.png" />
                            </td>
                        </tr>
                        <tr>
                            <td class="grupo-td" align="center">
                                CAM
                                <br />
                                <img id="Img95" runat="server" class="time-table"  src="Styles/Images/flags/Camaroes.png" />
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox10" CssClass="input-grupo" />
                            </td>
                            <td class="td-X" valign="top">
                                <span class="span-data">23/06</span>
                                <br />
                                <br />
                                <br />
                                <span class="span-horario">17h</span>
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox11" CssClass="input-grupo" />
                            </td>
                            <td class="grupo-td" align="center">
                                BRA
                                <br />
                                <img id="Img96" runat="server" class="time-table"  src="Styles/Images/flags/Brasil.png" />
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
            <td>
                <div class="div-grupo">
                    <table style="width: 100%" id="tbGrupoB" cellpadding="0" cellspacing="0" runat="server">
                        <tr>
                            <td colspan="5" class="header-grupo">
                                <center>
                                    <b>GRUPO B</b></center>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="grupo-td">
                                ESP
                                <br />
                                <img id="Img73" runat="server" class="time-table"  src="Styles/Images/flags/Espanha.png" />
                            </td>
                            <td align="center" class="grupo-td">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox12" CssClass="input-grupo" />
                            </td>
                            <td class="td-X" valign="top">
                                <span class="span-data">13/06</span>
                                <br />
                                <br />
                                <br />
                                <span class="span-horario">16h</span>
                            </td>
                            <td align="center" class="grupo-td">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox13" CssClass="input-grupo" />
                            </td>
                            <td align="center" class="grupo-td">
                                HOL
                                <br />
                                <img id="Img74" runat="server" class="time-table"  src="Styles/Images/flags/Holanda.png" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="grupo-td">
                                CHI
                                <br />
                                <img id="Img75" runat="server" class="time-table"  src="Styles/Images/flags/Chile.png" />
                            </td>
                            <td align="center" class="grupo-td">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox14" CssClass="input-grupo" />
                            </td>
                            <td class="td-X" valign="top">
                                <span class="span-data">12/06</span>
                                <br />
                                <br />
                                <br />
                                <span class="span-horario">17h</span>
                            </td>
                            <td align="center" class="grupo-td">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox15" CssClass="input-grupo" />
                            </td>
                            <td align="center" class="grupo-td">
                                AUS
                                <br />
                                <img id="Img76" runat="server" class="time-table"  src="Styles/Images/flags/Australia.png" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="grupo-td">
                                HOL
                                <br />
                                <img id="Img77" runat="server" class="time-table"  src="Styles/Images/flags/Holanda.png" />
                            </td>
                            <td align="center" class="grupo-td">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox16" CssClass="input-grupo" />
                            </td>
                            <td class="td-X" valign="top">
                                <span class="span-data">18/06</span>
                                <br />
                                <br />
                                <br />
                                <span class="span-horario">13h</span>
                            </td>
                            <td align="center" class="grupo-td">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox17" CssClass="input-grupo" />
                            </td>
                            <td align="center" class="grupo-td">
                                AUS
                                <br />
                                <img id="Img78" runat="server" class="time-table"  src="Styles/Images/flags/Australia.png" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="grupo-td">
                                ESP
                                <br />
                                <img id="Img79" runat="server" class="time-table"  src="Styles/Images/flags/Espanha.png" />
                            </td>
                            <td align="center" class="grupo-td">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox18" CssClass="input-grupo" />
                            </td>
                            <td class="td-X" valign="top">
                                <span class="span-data">18/06</span>
                                <br />
                                <br />
                                <br />
                                <span class="span-horario">16h</span>
                            </td>
                            <td align="center" class="grupo-td">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox19" CssClass="input-grupo" />
                            </td>
                            <td align="center" class="grupo-td">
                                CHIL
                                <br />
                                <img id="Img80" runat="server" class="time-table"  src="Styles/Images/flags/Chile.png" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="grupo-td">
                                ESP
                                <br />
                                <img id="Img81" runat="server" class="time-table"  src="Styles/Images/flags/Espanha.png" />
                            </td>
                            <td align="center" class="grupo-td">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox20" CssClass="input-grupo" />
                            </td>
                            <td class="td-X" valign="top">
                                <span class="span-data">23/06</span>
                                <br />
                                <br />
                                <br />
                                <span class="span-horario">16h</span>
                            </td>
                            <td align="center" class="grupo-td">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox21" CssClass="input-grupo" />
                            </td>
                            <td align="center" class="grupo-td">
                                AUS
                                <br />
                                <img id="Img82" runat="server" class="time-table"  src="Styles/Images/flags/Australia.png" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="grupo-td">
                                HOL
                                <br />
                                <img id="Img83" runat="server" class="time-table"  src="Styles/Images/flags/Holanda.png" />
                            </td>
                            <td align="center" class="grupo-td">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox22" CssClass="input-grupo" />
                            </td>
                            <td class="td-X" valign="top">
                                <span class="span-data">23/06</span>
                                <br />
                                <br />
                                <br />
                                <span class="span-horario">13h</span>
                            </td>
                            <td align="center" class="grupo-td">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox23" CssClass="input-grupo" />
                            </td>
                            <td align="center" class="grupo-td">
                                CHI
                                <br />
                                <img id="Img84" runat="server" class="time-table"  src="Styles/Images/flags/Chile.png" />
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div class="div-grupo">
                    <table style="width: 100%" id="tbGrupoC" cellpadding="0" cellspacing="0" runat="server">
                        <tr>
                            <td colspan="5" class="header-grupo">
                                <center>
                                    <b>GRUPO C</b></center>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="grupo-td">
                                COL
                                <br />
                                <img id="Img61" runat="server" class="time-table"  src="Styles/Images/flags/Colombia.png" />
                            </td>
                            <td align="center" class="grupo-td">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox24" CssClass="input-grupo" />
                            </td>
                            <td class="td-X" valign="top">
                                <span class="span-data">14/06</span>
                                <br />
                                <br />
                                <br />
                                <span class="span-horario">13h</span>
                            </td>
                            <td align="center" class="grupo-td">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox25" CssClass="input-grupo" />
                            </td>
                            <td align="center" class="grupo-td">
                                GRE
                                <br />
                                <img id="Img62" runat="server" class="time-table"  src="Styles/Images/flags/Grecia.png" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="grupo-td">
                                COS
                                <br />
                                <img id="Img63" runat="server" class="time-table"  src="Styles/Images/flags/Costa do marfim.png" />
                            </td>
                            <td align="center" class="grupo-td">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox26" CssClass="input-grupo" />
                            </td>
                            <td class="td-X" valign="top">
                                <span class="span-data">14/06</span>
                                <br />
                                <br />
                                <br />
                                <span class="span-horario">22h</span>
                            </td>
                            <td align="center" class="grupo-td">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox27" CssClass="input-grupo" />
                            </td>
                            <td align="center" class="grupo-td">
                                JAP
                                <br />
                                <img id="Img64" runat="server" class="time-table"  src="Styles/Images/flags/Japao.png" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="grupo-td">
                                COL
                                <br />
                                <img id="Img65" runat="server" class="time-table"  src="Styles/Images/flags/Colombia.png" />
                            </td>
                            <td align="center" class="grupo-td">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox28" CssClass="input-grupo" />
                            </td>
                            <td class="td-X" valign="top">
                                <span class="span-data">19/06</span>
                                <br />
                                <br />
                                <br />
                                <span class="span-horario">13h</span>
                            </td>
                            <td align="center" class="grupo-td">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox29" CssClass="input-grupo" />
                            </td>
                            <td align="center" class="grupo-td">
                                COS
                                <br />
                                <img id="Img66" runat="server" class="time-table"  src="Styles/Images/flags/Costa do marfim.png" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="grupo-td">
                                GRE
                                <br />
                                <img id="Img67" runat="server" class="time-table"  src="Styles/Images/flags/Grecia.png" />
                            </td>
                            <td align="center" class="grupo-td">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox30" CssClass="input-grupo" />
                            </td>
                            <td class="td-X" valign="top">
                                <span class="span-data">19/06</span>
                                <br />
                                <br />
                                <br />
                                <span class="span-horario">19h</span>
                            </td>
                            <td align="center" class="grupo-td">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox31" CssClass="input-grupo" />
                            </td>
                            <td align="center" class="grupo-td">
                                JAP
                                <br />
                                <img id="Img68" runat="server" class="time-table"  src="Styles/Images/flags/Japao.png" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="grupo-td">
                                COL
                                <br />
                                <img id="Img69" runat="server" class="time-table"  src="Styles/Images/flags/Colombia.png" />
                            </td>
                            <td align="center" class="grupo-td">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox32" CssClass="input-grupo" />
                            </td>
                            <td class="td-X" valign="top">
                                <span class="span-data">24/06</span>
                                <br />
                                <br />
                                <br />
                                <span class="span-horario">16h</span>
                            </td>
                            <td align="center" class="grupo-td">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox33" CssClass="input-grupo" />
                            </td>
                            <td align="center" class="grupo-td">
                                JAP
                                <br />
                                <img id="Img70" runat="server" class="time-table"  src="Styles/Images/flags/Japao.png" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="grupo-td">
                                GRE
                                <br />
                                <img id="Img71" runat="server" class="time-table"  src="Styles/Images/flags/Grecia.png" />
                            </td>
                            <td align="center" class="grupo-td">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox34" CssClass="input-grupo" />
                            </td>
                            <td class="td-X" valign="top">
                                <span class="span-data">24/06</span>
                                <br />
                                <br />
                                <br />
                                <span class="span-horario">17h</span>
                            </td>
                            <td align="center" class="grupo-td">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox35" CssClass="input-grupo" />
                            </td>
                            <td align="center" class="grupo-td">
                                COS
                                <br />
                                <img id="Img72" runat="server" class="time-table"  src="Styles/Images/flags/Costa do marfim.png" />
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
            <td>
                <div class="div-grupo">
                    <table style="width: 100%" id="tbGrupoD" cellpadding="0" cellspacing="0" runat="server">
                        <tr>
                            <td colspan="5" class="header-grupo">
                                <center>
                                    <b>GRUPO D</b></center>
                            </td>
                        </tr>
                        <tr>
                            <td class="grupo-td" align="center">
                                URU
                                <br />
                                <img id="Img49" runat="server" class="time-table"  src="Styles/Images/flags/uruguay.png" />
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox36" CssClass="input-grupo" />
                            </td>
                            <td class="td-X" valign="top">
                                <span class="span-data">14/06</span>
                                <br />
                                <br />
                                <br />
                                <span class="span-horario">16h</span>
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox37" CssClass="input-grupo" />
                            </td>
                            <td class="grupo-td" align="center">
                                RIC
                                <br />
                                <img id="Img50" runat="server" class="time-table"  src="Styles/Images/flags/Costa rica.png" />
                            </td>
                        </tr>
                        <tr>
                            <td class="grupo-td" align="center">
                                ING
                                <br />
                                <img id="Img51" runat="server" class="time-table"  src="Styles/Images/flags/Inglaterra.png" />
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox38" CssClass="input-grupo" />
                            </td>
                            <td class="td-X" valign="top">
                                <span class="span-data">14/06</span>
                                <br />
                                <br />
                                <br />
                                <span class="span-horario">18h</span>
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox39" CssClass="input-grupo" />
                            </td>
                            <td class="grupo-td" align="center">
                                ITA
                                <br />
                                <img id="Img52" runat="server" class="time-table"  src="Styles/Images/flags/Italia.png" />
                            </td>
                        </tr>
                        <tr>
                            <td class="grupo-td" align="center">
                                URU
                                <br />
                                <img id="Img53" runat="server" class="time-table"  src="Styles/Images/flags/Uruguay.png" />
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox40" CssClass="input-grupo" />
                            </td>
                            <td class="td-X" valign="top">
                                <span class="span-data">19/06</span>
                                <br />
                                <br />
                                <br />
                                <span class="span-horario">16h</span>
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox41" CssClass="input-grupo" />
                            </td>
                            <td class="grupo-td" align="center">
                                ING
                                <br />
                                <img id="Img54" runat="server" class="time-table"  src="Styles/Images/flags/Inglaterra.png" />
                            </td>
                        </tr>
                        <tr>
                            <td class="grupo-td" align="center">
                                RIC
                                <br />
                                <img id="Img55" runat="server" class="time-table"  src="Styles/Images/flags/Costa rica.png" />
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox42" CssClass="input-grupo" />
                            </td>
                            <td class="td-X" valign="top">
                                <span class="span-data">20/06</span>
                                <br />
                                <br />
                                <br />
                                <span class="span-horario">13h</span>
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox43" CssClass="input-grupo" />
                            </td>
                            <td class="grupo-td" align="center">
                                ITA
                                <br />
                                <img id="Img56" runat="server" class="time-table"  src="Styles/Images/flags/Italia.png" />
                            </td>
                        </tr>
                        <tr>
                            <td class="grupo-td" align="center">
                                RIC
                                <br />
                                <img id="Img57" runat="server" class="time-table"  src="Styles/Images/flags/Costa rica.png" />
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox44" CssClass="input-grupo" />
                            </td>
                            <td class="td-X" valign="top">
                                <span class="span-data">24/06</span>
                                <br />
                                <br />
                                <br />
                                <span class="span-horario">13h</span>
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox45" CssClass="input-grupo" />
                            </td>
                            <td class="grupo-td" align="center">
                                ING
                                <br />
                                <img id="Img58" runat="server" class="time-table"  src="Styles/Images/flags/Inglaterra.png" />
                            </td>
                        </tr>
                        <tr>
                            <td class="grupo-td" align="center">
                                URU
                                <br />
                                <img id="Img59" runat="server" class="time-table"  src="Styles/Images/flags/Uruguay.png" />
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox46" CssClass="input-grupo" />
                            </td>
                            <td class="td-X" valign="top">
                                <span class="span-data">24/06</span>
                                <br />
                                <br />
                                <br />
                                <span class="span-horario">13h</span>
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox47" CssClass="input-grupo" />
                            </td>
                            <td class="grupo-td" align="center">
                                ITA
                                <br />
                                <img id="Img60" runat="server" class="time-table"  src="Styles/Images/flags/Italia.png" />
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
            <td>
                <div class="div-grupo">
                    <table style="width: 100%" id="tbGrupoE" cellpadding="0" cellspacing="0" runat="server">
                        <tr>
                            <td colspan="5" class="header-grupo">
                                <center>
                                    <b>GRUPO E</b></center>
                            </td>
                        </tr>
                        <tr>
                            <td class="grupo-td" align="center">
                                SUI
                                <br />
                                <img id="Img37" runat="server" class="time-table"  src="Styles/Images/flags/Suica.png" />
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox48" CssClass="input-grupo" />
                            </td>
                            <td class="td-X" valign="top">
                                <span class="span-data">15/06</span>
                                <br />
                                <br />
                                <br />
                                <span class="span-horario">13h</span>
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox49" CssClass="input-grupo" />
                            </td>
                            <td class="grupo-td" align="center">
                                EQU
                                <br />
                                <img id="Img38" runat="server" class="time-table"  src="Styles/Images/flags/equador.png" />
                            </td>
                        </tr>
                        <tr>
                            <td class="grupo-td" align="center">
                                FRA
                                <br />
                                <img id="Img39" runat="server" class="time-table"  src="Styles/Images/flags/Franca.png" />
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox50" CssClass="input-grupo" />
                            </td>
                            <td class="td-X" valign="top">
                                <span class="span-data">15/06</span>
                                <br />
                                <br />
                                <br />
                                <span class="span-horario">16h</span>
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox51" CssClass="input-grupo" />
                            </td>
                            <td class="grupo-td" align="center">
                                HON
                                <br />
                                <img id="Img40" runat="server" class="time-table"  src="Styles/Images/flags/Honduras.png" />
                            </td>
                        </tr>
                        <tr>
                            <td class="grupo-td" align="center">
                                SUI
                                <br />
                                <img id="Img41" runat="server" class="time-table"  src="Styles/Images/flags/Suica.png" />
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox52" CssClass="input-grupo" />
                            </td>
                            <td class="td-X" valign="top">
                                <span class="span-data">20/06</span>
                                <br />
                                <br />
                                <br />
                                <span class="span-horario">16h</span>
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox53" CssClass="input-grupo" />
                            </td>
                            <td class="grupo-td" align="center">
                                FRA
                                <br />
                                <img id="Img42" runat="server" class="time-table"  src="Styles/Images/flags/Franca.png" />
                            </td>
                        </tr>
                        <tr>
                            <td class="grupo-td" align="center">
                                EQU
                                <br />
                                <img id="Img43" runat="server" class="time-table"  src="Styles/Images/flags/Equador.png" />
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox54" CssClass="input-grupo" />
                            </td>
                            <td class="td-X" valign="top">
                                <span class="span-data">20/06</span>
                                <br />
                                <br />
                                <br />
                                <span class="span-horario">19h</span>
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox55" CssClass="input-grupo" />
                            </td>
                            <td class="grupo-td" align="center">
                                HON
                                <br />
                                <img id="Img44" runat="server" class="time-table"  src="Styles/Images/flags/Honduras.png" />
                            </td>
                        </tr>
                        <tr>
                            <td class="grupo-td" align="center">
                                SUI
                                <br />
                                <img id="Img45" runat="server" class="time-table"  src="Styles/Images/flags/Suica.png" />
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox56" CssClass="input-grupo" />
                            </td>
                            <td class="td-X" valign="top">
                                <span class="span-data">25/06</span>
                                <br />
                                <br />
                                <br />
                                <span class="span-horario">16h</span>
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox57" CssClass="input-grupo" />
                            </td>
                            <td class="grupo-td" align="center">
                                HON
                                <br />
                                <img id="Img46" runat="server" class="time-table"  src="Styles/Images/flags/Honduras.png" />
                            </td>
                        </tr>
                        <tr>
                            <td class="grupo-td" align="center">
                                EQU
                                <br />
                                <img id="Img47" runat="server" class="time-table"  src="Styles/Images/flags/Equador.png" />
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox58" CssClass="input-grupo" />
                            </td>
                            <td class="td-X" valign="top">
                                <span class="span-data">25/06</span>
                                <br />
                                <br />
                                <br />
                                <span class="span-horario">17h</span>
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox59" CssClass="input-grupo" />
                            </td>
                            <td class="grupo-td" align="center">
                                FRA
                                <br />
                                <img id="Img48" runat="server" class="time-table"  src="Styles/Images/flags/Franca.png" />
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div class="div-grupo">
                    <table style="width: 100%" id="tbGrupoF" cellpadding="0" cellspacing="0" runat="server">
                        <tr>
                            <td colspan="5" class="header-grupo">
                                <center>
                                    <b>GRUPO F</b></center>
                            </td>
                        </tr>
                        <tr>
                            <td class="grupo-td" align="center">
                                ARG
                                <br />
                                <img id="Img25" runat="server" class="time-table"  src="Styles/Images/flags/Argentina.png" />
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox60" CssClass="input-grupo" />
                            </td>
                            <td class="td-X" valign="top">
                                <span class="span-data">15/06</span>
                                <br />
                                <br />
                                <br />
                                <span class="span-horario">19h</span>
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox61" CssClass="input-grupo" />
                            </td>
                            <td class="grupo-td" align="center">
                                BOS
                                <br />
                                <img id="Img26" runat="server" class="time-table"  src="Styles/Images/flags/Bosnia.png" />
                            </td>
                        </tr>
                        <tr>
                            <td class="grupo-td" align="center">
                                IRA
                                <br />
                                <img id="Img27" runat="server" class="time-table"  src="Styles/Images/flags/Ira.png" />
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox62" CssClass="input-grupo" />
                            </td>
                            <td class="td-X" valign="top">
                                <span class="span-data">16/06</span>
                                <br />
                                <br />
                                <br />
                                <span class="span-horario">16h</span>
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox63" CssClass="input-grupo" />
                            </td>
                            <td class="grupo-td" align="center">
                                NIG
                                <br />
                                <img id="Img28" runat="server" class="time-table"  src="Styles/Images/flags/Nigeria.png" />
                            </td>
                        </tr>
                        <tr>
                            <td class="grupo-td" align="center">
                                ARG
                                <br />
                                <img id="Img29" runat="server" class="time-table"  src="Styles/Images/flags/Argentina.png" />
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox64" CssClass="input-grupo" />
                            </td>
                            <td class="td-X" valign="top">
                                <span class="span-data">21/06</span>
                                <br />
                                <br />
                                <br />
                                <span class="span-horario">13h</span>
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox65" CssClass="input-grupo" />
                            </td>
                            <td class="grupo-td" align="center">
                                IRA
                                <br />
                                <img id="Img30" runat="server" class="time-table"  src="Styles/Images/flags/Ira.png" />
                            </td>
                        </tr>
                        <tr>
                            <td class="grupo-td" align="center">
                                BOS
                                <br />
                                <img id="Img31" runat="server" class="time-table"  src="Styles/Images/flags/Bosnia.png" />
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox66" CssClass="input-grupo" />
                            </td>
                            <td class="td-X" valign="top">
                                <span class="span-data">21/06</span>
                                <br />
                                <br />
                                <br />
                                <span class="span-horario">18h</span>
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox67" CssClass="input-grupo" />
                            </td>
                            <td class="grupo-td" align="center">
                                NIG
                                <br />
                                <img id="Img32" runat="server" class="time-table"  src="Styles/Images/flags/Nigeria.png" />
                            </td>
                        </tr>
                        <tr>
                            <td class="grupo-td" align="center">
                                ARG
                                <br />
                                <img id="Img33" runat="server" class="time-table"  src="Styles/Images/flags/Argentina.png" />
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox68" CssClass="input-grupo" />
                            </td>
                            <td class="td-X" valign="top">
                                <span class="span-data">25/06</span>
                                <br />
                                <br />
                                <br />
                                <span class="span-horario">13h</span>
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox69" CssClass="input-grupo" />
                            </td>
                            <td class="grupo-td" align="center">
                                NIG
                                <br />
                                <img id="Img34" runat="server" class="time-table"  src="Styles/Images/flags/Nigeria.png" />
                            </td>
                        </tr>
                        <tr>
                            <td class="grupo-td" align="center">
                                BOS
                                <br />
                                <img id="Img35" runat="server" class="time-table"  src="Styles/Images/flags/Bosnia.png" />
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox70" CssClass="input-grupo" />
                            </td>
                            <td class="td-X" valign="top">
                                <span class="span-data">25/06</span>
                                <br />
                                <br />
                                <br />
                                <span class="span-horario">13h</span>
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox71" CssClass="input-grupo" />
                            </td>
                            <td class="grupo-td" align="center">
                                IRA
                                <br />
                                <img id="Img36" runat="server" class="time-table"  src="Styles/Images/flags/Ira.png" />
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
            <td>
                <div class="div-grupo">
                    <table style="width: 100%" id="tbGrupoG" cellpadding="0" cellspacing="0" runat="server">
                        <tr>
                            <td colspan="5" class="header-grupo">
                                <center>
                                    <b>GRUPO G</b></center>
                            </td>
                        </tr>
                        <tr>
                            <td class="grupo-td" align="center">
                                ALE
                                <br />
                                <img id="Img13" runat="server" class="time-table"  src="Styles/Images/flags/Alemanha.png" />
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox72" CssClass="input-grupo" />
                            </td>
                            <td class="td-X" valign="top">
                                <span class="span-data">16/06</span>
                                <br />
                                <br />
                                <br />
                                <span class="span-horario">13h</span>
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox73" CssClass="input-grupo" />
                            </td>
                            <td class="grupo-td" align="center">
                                POR
                                <br />
                                <img id="Img14" runat="server" class="time-table"  src="Styles/Images/flags/Portugal.png" />
                            </td>
                        </tr>
                        <tr>
                            <td class="grupo-td" align="center">
                                GAN
                                <br />
                                <img id="Img15" runat="server" class="time-table"  src="Styles/Images/flags/Gana.png" />
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox74" CssClass="input-grupo" />
                            </td>
                            <td class="td-X" valign="top">
                                <span class="span-data">16/06</span>
                                <br />
                                <br />
                                <br />
                                <span class="span-horario">19h</span>
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox75" CssClass="input-grupo" />
                            </td>
                            <td class="grupo-td" align="center">
                                EUA
                                <br />
                                <img id="Img16" runat="server" class="time-table"  src="Styles/Images/flags/Eua.png" />
                            </td>
                        </tr>
                        <tr>
                            <td class="grupo-td" align="center">
                                ALE
                                <br />
                                <img id="Img17" runat="server" class="time-table"  src="Styles/Images/flags/Alemanha.png" />
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox76" CssClass="input-grupo" />
                            </td>
                            <td class="td-X" valign="top">
                                <span class="span-data">21/06</span>
                                <br />
                                <br />
                                <br />
                                <span class="span-horario">16h</span>
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox77" CssClass="input-grupo" />
                            </td>
                            <td class="grupo-td" align="center">
                                GAN
                                <br />
                                <img id="Img18" runat="server" class="time-table"  src="Styles/Images/flags/Gana.png" />
                            </td>
                        </tr>
                        <tr>
                            <td class="grupo-td" align="center">
                                POR
                                <br />
                                <img id="Img19" runat="server" class="time-table"  src="Styles/Images/flags/Portugal.png" />
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox78" CssClass="input-grupo" />
                            </td>
                            <td class="td-X" valign="top">
                                <span class="span-data">22/06</span>
                                <br />
                                <br />
                                <br />
                                <span class="span-horario">18h</span>
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox79" CssClass="input-grupo" />
                            </td>
                            <td class="grupo-td" align="center">
                                EUA
                                <br />
                                <img id="Img20" runat="server" class="time-table"  src="Styles/Images/flags/EUA.png" />
                            </td>
                        </tr>
                        <tr>
                            <td class="grupo-td" align="center">
                                POR
                                <br />
                                <img id="Img21" runat="server" class="time-table"  src="Styles/Images/flags/Portugal.png" />
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox80" CssClass="input-grupo" />
                            </td>
                            <td class="td-X" valign="top">
                                <span class="span-data">26/06</span>
                                <br />
                                <br />
                                <br />
                                <span class="span-horario">13h</span>
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox81" CssClass="input-grupo" />
                            </td>
                            <td class="grupo-td" align="center">
                                GAN
                                <br />
                                <img id="Img22" runat="server" class="time-table"  src="Styles/Images/flags/Gana.png" />
                            </td>
                        </tr>
                        <tr>
                            <td class="grupo-td" align="center">
                                ALE
                                <br />
                                <img id="Img23" runat="server" class="time-table"  src="Styles/Images/flags/Alemanha.png" />
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox82" CssClass="input-grupo" />
                            </td>
                            <td class="td-X" valign="top">
                                <span class="span-data">26/06</span>
                                <br />
                                <br />
                                <br />
                                <span class="span-horario">13h</span>
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox83" CssClass="input-grupo" />
                            </td>
                            <td class="grupo-td" align="center">
                                EUA
                                <br />
                                <img id="Img24" runat="server" class="time-table"  src="Styles/Images/flags/EUA.png" />
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
            <td>
            <div class="div-grupo">
                    <table style="width: 100%" id="tbGrupoH" cellpadding="0" cellspacing="0" runat="server">
                        <tr>
                             <td colspan="5" class="header-grupo">
                                <center>
                                    <b>GRUPO H</b></center>
                            </td>
                        </tr>
                        <tr>
                            <td class="grupo-td" align="center">
                                BEL
                                <br />
                                <img id="Img1" runat="server" class="time-table"  src="Styles/Images/flags/Belgica.png" />
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox84" CssClass="input-grupo" />
                            </td>
                            <td class="td-X" valign="top">
                                <span class="span-data">17/06</span>
                                <br />
                                <br />
                                <br />
                                <span class="span-horario">13h</span>
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox85" CssClass="input-grupo" />
                            </td>
                            <td class="grupo-td" align="center">
                                ARG
                                <br />
                                <img id="Img2" runat="server" class="time-table"  src="Styles/Images/flags/Argelia.png" />
                            </td>
                        </tr>
                        <tr>
                            <td class="grupo-td" align="center">
                                RUS
                                <br />
                                <img id="Img3" runat="server" class="time-table"  src="Styles/Images/flags/Russia.png" />
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox86" CssClass="input-grupo" />
                            </td>
                             <td class="td-X" valign="top">
                                <span class="span-data">17/06</span>
                                <br />
                                <br />
                                <br />
                                <span class="span-horario">18h</span>
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox87" CssClass="input-grupo" />
                            </td>
                            <td class="grupo-td" align="center">
                                COR
                                <br />
                                <img id="Img4" runat="server" class="time-table"  src="Styles/Images/flags/Coreia do sul.png" />
                            </td>
                        </tr>
                        <tr>
                            <td class="grupo-td" align="center">
                                BEL
                                <br />
                                <img id="Img5" runat="server" class="time-table"  src="Styles/Images/flags/Belgica.png" />
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox88" CssClass="input-grupo" />
                            </td>
                            <td class="td-X" valign="top">
                                <span class="span-data">22/06</span>
                                <br />
                                <br />
                                <br />
                                <span class="span-horario">13h</span>
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox89" CssClass="input-grupo" />
                            </td>
                            <td class="grupo-td" align="center">
                                RUS
                                <br />
                                <img id="Img6" runat="server" class="time-table"  src="Styles/Images/flags/Russia.png" />
                            </td>
                        </tr>
                        <tr>
                            <td class="grupo-td" align="center">
                                ARG
                                <br />
                                <img id="Img7" runat="server" class="time-table"  src="Styles/Images/flags/Argelia.png" />
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox90" CssClass="input-grupo" />
                            </td>
                            <td class="td-X" valign="top">
                                <span class="span-data">22/06</span>
                                <br />
                                <br />
                                <br />
                                <span class="span-horario">16h</span>
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox91" CssClass="input-grupo" />
                            </td>
                            <td class="grupo-td" align="center">
                                COR
                                <br />
                                <img id="Img8" runat="server" class="time-table"  src="Styles/Images/flags/Coreia do sul.png" />
                            </td>
                        </tr>
                        <tr>
                            <td class="grupo-td" align="center">
                                ARG
                                <br />
                                <img id="Img9" runat="server" class="time-table"  src="Styles/Images/flags/Argelia.png" />
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox92" CssClass="input-grupo" />
                            </td>
                            <td class="td-X" valign="top">
                                <span class="span-data">26/06</span>
                                <br />
                                <br />
                                <br />
                                <span class="span-horario">17h</span>
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox93" CssClass="input-grupo" />
                            </td>
                            <td class="grupo-td" align="center">
                                RUS
                                <br />
                                <img id="Img10" runat="server" class="time-table"  src="Styles/Images/flags/Russia.png" />
                            </td>
                        </tr>
                        <tr>
                            <td class="grupo-td" align="center">
                                BEL
                                <br />
                                <img id="Img11" runat="server" class="time-table"  src="Styles/Images/flags/Belgica.png" />
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox94" CssClass="input-grupo" />
                            </td>
                            <td class="td-X" valign="top">
                                <span class="span-data">26/06</span>
                                <br />
                                <br />
                                <br />
                                <span class="span-horario">17h</span>
                            </td>
                            <td class="grupo-td" align="center">
                                <asp:TextBox runat="server" name="Valor" ID="TextBox95" CssClass="input-grupo" />
                            </td>
                            <td class="grupo-td" align="center">
                                COR
                                <br />
                                <img id="Img12" runat="server" class="time-table"  src="Styles/Images/flags/Coreia do sul.png" />
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <div style="width: 936px; position: relative; margin-left: auto; margin-right: auto;">
        <div id="t4">
            <div class="ks ks-r16 ks-1A2B rtxt" title="Round of 16">
                <div class="dt">
                    06/28<br>
                    13:00</div>
                <div class="team ks-1A">
                    <asp:TextBox ID="txtJogo48Time1" data-tc="NG" data-rank="1A" runat="server" /><span
                        class="f">
                        <div class="flag-24 flag-24-NG">
                            <asp:Image ID="ImgJogo48Time1" ImageUrl="~/Styles/Images/flags/Argentina.png" Height="24px"
                                Width="24px" runat="server" />
                        </div>
                    </span>
                    <asp:Label ID="lblJogo48Time1" runat="server" Text="Label" CssClass="n" Style="float: right"></asp:Label></div>
                <div class="team ks-2B">
                    <asp:TextBox ID="txtJogo48Time2" data-tc="PT" data-rank="2B" runat="server" /><span
                        class="f"><div class="flag-24 flag-24-PT">
                            <asp:Image ID="ImgJogo48Time2" ImageUrl="~/Styles/Images/flags/Argentina.png" Height="24px"
                                Width="24px" runat="server" />
                        </div>
                    </span>
                    <asp:Label ID="lblJogo48Time2" runat="server" Text="Label" CssClass="n" Style="float: right"></asp:Label></div>
            </div>
            <div class="ks ks-r16 ks-1C2D rtxt" title="Round of 16">
                <div class="dt">
                    06/28<br>
                    17:00</div>
                <div class="team ks-1C">
                    <asp:TextBox ID="txtJogo49Time1" data-tc="AR" data-rank="1C" runat="server" /><span
                        class="f"><div class="flag-24 flag-24-AR">
                            <asp:Image ID="ImgJogo49Time1" ImageUrl="~/Styles/Images/flags/Argentina.png" Height="24px"
                                Width="24px" runat="server" /></div>
                    </span>
                    <asp:Label ID="lblJogo49Time1" runat="server" Text="Label" CssClass="n" Style="float: right"></asp:Label></div>
                <div class="team ks-2D">
                    <asp:TextBox ID="txtJogo49Time2" data-tc="GR" data-rank="2D" runat="server" /><span
                        class="f"><div class="flag-24 flag-24-GR">
                            <asp:Image ID="ImgJogo49Time2" ImageUrl="~/Styles/Images/flags/Argentina.png" Height="24px"
                                Width="24px" runat="server" /></div>
                    </span>
                    <asp:Label ID="lblJogo49Time2" runat="server" Text="Label" CssClass="n" Style="float: right"></asp:Label></div>
            </div>
            <div class="ks ks-r16 ks-1E2F rtxt" title="Round of 16">
                <div class="dt">
                    06/29<br>
                    13:00</div>
                <div class="team ks-1E">
                    <asp:TextBox ID="txtJogo50Time1" data-tc="NL" data-rank="1E" runat="server" /><span
                        class="f"><div class="flag-24 flag-24-NL">
                            <asp:Image ID="ImgJogo50Time1" ImageUrl="~/Styles/Images/flags/Argentina.png" Height="24px"
                                Width="24px" runat="server" /></div>
                    </span>
                    <asp:Label ID="lblJogo50Time1" runat="server" Text="Label" CssClass="n" Style="float: right"></asp:Label></div>
                <div class="team ks-2F">
                    <asp:TextBox ID="txtJogo50Time2" data-tc="AU" data-rank="2F" runat="server" /><span
                        class="f"><div class="flag-24 flag-24-AU">
                            <asp:Image ID="ImgJogo50Time2" ImageUrl="~/Styles/Images/flags/Argentina.png" Height="24px"
                                Width="24px" runat="server" /></div>
                    </span>
                    <asp:Label ID="lblJogo50Time2" runat="server" Text="Label" CssClass="n" Style="float: right"></asp:Label></div>
            </div>
            <div class="ks ks-r16 ks-1G2H rtxt" title="Round of 16">
                <div class="dt">
                    06/29<br>
                    17:00</div>
                <div class="team ks-1G">
                    <asp:TextBox ID="txtJogo51Time1" data-tc="DZ" data-rank="1G" runat="server" /><span
                        class="f"><div class="flag-24 flag-24-DZ">
                            <asp:Image ID="ImgJogo51Time1" ImageUrl="~/Styles/Images/flags/Argentina.png" Height="24px"
                                Width="24px" runat="server" /></div>
                    </span>
                    <asp:Label ID="lblJogo51Time1" runat="server" Text="Label" Style="float: right" CssClass="n"></asp:Label></div>
                <div class="team ks-2H">
                    <asp:TextBox ID="txtJogo51Time2" data-tc="UY" data-rank="2H" runat="server" /><span
                        class="f"><div class="flag-24 flag-24-UY">
                            <asp:Image ID="ImgJogo51Time2" ImageUrl="~/Styles/Images/flags/Argentina.png" Height="24px"
                                Width="24px" runat="server" /></div>
                    </span>
                    <asp:Label ID="lblJogo51Time2" runat="server" Text="Label" Style="float: right;"
                        CssClass="n"></asp:Label></div>
            </div>
            <div class="ks ks-r16 ks-1B2A ltxt" title="Round of 16">
                <div class="dt">
                    06/30<br>
                    13:00</div>
                <div class="team ks-1B">
                    <asp:TextBox ID="txtJogo52Time1" data-tc="CI" data-rank="1B" runat="server" /><span
                        class="f"><div class="flag-24 flag-24-CI">
                            <asp:Image ID="ImgJogo52Time1" runat="server" Height="24px" ImageUrl="~/Styles/Images/flags/Argentina.png"
                                Width="24px" />
                        </div>
                    </span>
                    <asp:Label ID="lblJogo52Time1" runat="server" Text="Label" CssClass="n"></asp:Label></div>
                <div class="team ks-2A">
                    <asp:TextBox ID="txtJogo52Time2" data-tc="HR" data-rank="2A" runat="server" /><span
                        class="f"><div class="flag-24 flag-24-HR">
                            <asp:Image ID="ImgJogo52Time2" runat="server" Height="24px" ImageUrl="~/Styles/Images/flags/Argentina.png"
                                Width="24px" />
                        </div>
                    </span>
                    <asp:Label ID="lblJogo52Time2" runat="server" Text="Label" CssClass="n"></asp:Label></div>
            </div>
            <div class="ks ks-r16 ks-1D2C ltxt" title="Round of 16">
                <div class="dt">
                    06/30<br>
                    17:00</div>
                <div class="team ks-1D">
                    <asp:TextBox ID="txtJogo53Time1" data-tc="CR" data-rank="1D" runat="server" /><span
                        class="f"><div class="flag-24 flag-24-CR">
                            <asp:Image ID="ImgJogo53Time1" runat="server" Height="24px" ImageUrl="~/Styles/Images/flags/Argentina.png"
                                Width="24px" />
                        </div>
                    </span>
                    <asp:Label ID="lblJogo53Time1" runat="server" Text="Label" CssClass="n"></asp:Label></div>
                <div class="team ks-2C">
                    <asp:TextBox ID="txtJogo53Time2" data-tc="BA" data-rank="2C" runat="server" /><span
                        class="f"><div class="flag-24 flag-24-BA">
                            <asp:Image ID="ImgJogo53Time2" runat="server" Height="24px" ImageUrl="~/Styles/Images/flags/Argentina.png"
                                Width="24px" />
                        </div>
                    </span>
                    <asp:Label ID="lblJogo53Time2" runat="server" Text="Label" CssClass="n"></asp:Label></div>
            </div>
            <div class="ks ks-r16 ks-1F2E ltxt" title="Round of 16">
                <div class="dt">
                    07/01<br>
                    13:00</div>
                <div class="team ks-1F">
                    <asp:TextBox ID="txtJogo54Time1" data-tc="ES" data-rank="1F" runat="server" /><span
                        class="f"><div class="flag-24 flag-24-ES">
                            <asp:Image ID="ImgJogo54Time1" runat="server" Height="24px" ImageUrl="~/Styles/Images/flags/Argentina.png"
                                Width="24px" />
                        </div>
                    </span>
                    <asp:Label ID="lblJogo54Time1" runat="server" Text="Label" CssClass="n"></asp:Label></div>
                <div class="team ks-2E">
                    <asp:TextBox ID="txtJogo54Time2" data-tc="EC" data-rank="2E" runat="server" /><span
                        class="f"><div class="flag-24 flag-24-EC">
                            <asp:Image ID="ImgJogo54Time2" runat="server" Height="24px" ImageUrl="~/Styles/Images/flags/Argentina.png"
                                Width="24px" />
                        </div>
                    </span>
                    <asp:Label ID="lblJogo54Time2" runat="server" Text="Label" CssClass="n"></asp:Label></div>
            </div>
            <div class="ks ks-r16 ks-1H2G ltxt" title="Round of 16">
                <div class="dt">
                    07/01<br>
                    17:00</div>
                <div class="team ks-1H">
                    <asp:TextBox ID="txtJogo55Time1" data-tc="_england" data-rank="1H" runat="server" /><span
                        class="f"><div class="flag-24 flag-24-_england">
                            <asp:Image ID="ImgJogo55Time1" runat="server" Height="24px" ImageUrl="~/Styles/Images/flags/Argentina.png"
                                Width="24px" />
                        </div>
                    </span>
                    <asp:Label ID="lblJogo55Time1" runat="server" Text="Label" CssClass="n"></asp:Label></div>
                <div class="team ks-2G">
                    <asp:TextBox ID="txtJogo55Time2" data-tc="RU" data-rank="2G" runat="server" /><span
                        class="f"><div class="flag-24 flag-24-RU">
                            <asp:Image ID="ImgJogo55Time2" runat="server" Height="24px" ImageUrl="~/Styles/Images/flags/Argentina.png"
                                Width="24px" />
                        </div>
                    </span>
                    <asp:Label ID="lblJogo55Time2" runat="server" Text="Label" CssClass="n"></asp:Label></div>
            </div>
            <div class="ks ks-qf ks-1A2B1C2D rtxt" title="Quarter-finals">
                <div class="dt">
                    07/04<br>
                    17:00</div>
                <div class="team ks-1A2B-w">
                    <asp:Image ID="ImgJogo56Time1" Style="margin-left: 35px; float: left" ImageUrl="~/Styles/Images/flags/Argentina.png"
                        Height="24px" Width="24px" runat="server" />
                    <asp:TextBox ID="txtJogo56Time1" data-rank="1A2B" runat="server" Style="float: left;
                        margin-left: 5px;"></asp:TextBox><span class="f"></span></div>
                <div class="team ks-C ks-D ks-1C2D-w">
                    <asp:Image ID="ImgJogo56Time2" Style="margin-left: 35px; float: left" ImageUrl="~/Styles/Images/flags/Argentina.png"
                        Height="24px" Width="24px" runat="server" />
                    <asp:TextBox ID="txtJogo56Time2" data-rank="1A2B" runat="server" Style="float: left;
                        margin-left: 5px;"></asp:TextBox><span class="f"></span></div>
            </div>
            <div class="ks ks-qf ks-1E2F1G2H rtxt" title="Quarter-finals">
                <div class="dt">
                    07/04<br>
                    13:00</div>
                <div class="team ks-1E2F-w">
                    <asp:Image ID="ImgJogo58Time1" Style="margin-left: 35px; float: left" ImageUrl="~/Styles/Images/flags/Argentina.png"
                        Height="24px" Width="24px" runat="server" />
                    <asp:TextBox ID="txtJogo58Time1" data-rank="1A2B" runat="server" Style="float: left;
                        margin-left: 5px;"></asp:TextBox><span class="f"></span></div>
                <div class="team ks-G ks-H ks-1G2H-w">
                    <asp:Image ID="ImgJogo58Time2" Style="margin-left: 35px; float: left" ImageUrl="~/Styles/Images/flags/Argentina.png"
                        Height="24px" Width="24px" runat="server" />
                    <asp:TextBox ID="txtJogo58Time2" data-rank="1A2B" runat="server" Style="float: left;
                        margin-left: 5px;"></asp:TextBox><span class="f"></span></div>
            </div>
            <div class="ks ks-qf ks-1B2A1D2C ltxt" title="Quarter-finals">
                <div class="dt">
                    07/05<br>
                    17:00</div>
                <div class="team ks-1B2A-w">
                    <asp:TextBox ID="txtJogo57Time1" data-rank="1B2A" runat="server"> </asp:TextBox>
                    <asp:Image ID="ImgJogo57Time1" ImageUrl="~/Styles/Images/flags/Argentina.png" Height="24px"
                        Width="24px" runat="server" />
                    <span class="f"></span>
                </div>
                <div class="team ks-1B2A-w">
                    <asp:TextBox ID="txtJogo57Time2" data-rank="1B2A" runat="server"> </asp:TextBox>
                    <asp:Image ID="ImgJogo57Time2" ImageUrl="~/Styles/Images/flags/Argentina.png" Height="24px"
                        Width="24px" runat="server" />
                    <span class="f"></span>
                </div>
            </div>
            <div class="ks ks-qf ks-1F2E1H2G ltxt" title="Quarter-finals">
                <div class="dt">
                    07/05<br>
                    13:00</div>
                <div class="team ks-1B2A-w">
                    <asp:TextBox ID="txtJogo59Time1" data-rank="1B2A" runat="server"> </asp:TextBox>
                    <asp:Image ID="ImgJogo59Time1" ImageUrl="~/Styles/Images/flags/Argentina.png" Height="24px"
                        Width="24px" runat="server" />
                    <span class="f"></span>
                </div>
                <div class="team ks-1B2A-w">
                    <asp:TextBox ID="txtJogo59Time2" data-rank="1B2A" runat="server"> </asp:TextBox>
                    <asp:Image ID="ImgJogo59Time2" ImageUrl="~/Styles/Images/flags/Argentina.png" Height="24px"
                        Width="24px" runat="server" />
                    <span class="f"></span>
                </div>
            </div>
            <div class="ks ks-sf ks-1A2B1C2D1E2F1G2H rtxt" title="Semi-finals">
                <div class="dt">
                    07/08<br>
                    17:00</div>
                <div class="rtxt team ks-1A2B1C2D-w">
                    <asp:Image ID="ImgJogo60Time1" Style="margin-left: 35px; float: left" ImageUrl="~/Styles/Images/flags/Argentina.png"
                        Height="24px" Width="24px" runat="server" />
                    <asp:TextBox ID="txtJogo60Time1" data-rank="1A2B" runat="server" Style="float: left;
                        margin-left: 5px;"> </asp:TextBox><span class="f"></span></div>
                <div class="rtxt team ks-1E2F1G2H-w">
                    <asp:Image ID="ImgJogo60Time2" Style="margin-left: 35px; float: left" ImageUrl="~/Styles/Images/flags/Argentina.png"
                        Height="24px" Width="24px" runat="server" />
                    <asp:TextBox ID="txtJogo60Time2" data-rank="1A2B" runat="server" Style="float: left;
                        margin-left: 5px;"> </asp:TextBox><span class="f"></span></div>
            </div>
            <div class="ks ks-sf ks-1B2A1D2C1F2E1H2G ltxt" title="Semi-finals">
                <div class="dt">
                    07/09<br>
                    17:00</div>
                <div class="team ks-1B2A-w">
                    <asp:TextBox ID="txtJogo61Time1" data-rank="1B2A" runat="server"></asp:TextBox>
                    <asp:Image ID="ImgJogo61Time1" ImageUrl="~/Styles/Images/flags/Argentina.png" Height="24px"
                        Width="24px" runat="server" />
                    <span class="f"></span>
                </div>
                <div class="team ks-1B2A-w">
                    <asp:TextBox ID="txtJogo61Time2" data-rank="1B2A" runat="server"> </asp:TextBox>
                    <asp:Image ID="ImgJogo61Time2" ImageUrl="~/Styles/Images/flags/Argentina.png" Height="24px"
                        Width="24px" runat="server" />
                    <span class="f"></span>
                </div>
            </div>
            <div class="ks ks-3RD" title="Match for third place">
                <h2>
                    Terceiro lugar</h2>
                <table width="100%" style="color: Black">
                    <tr>
                        <td align="right">
                            <asp:Label ID="lblJogo61Time1" runat="server" Text="Label" CssClass="n"></asp:Label>
                        </td>
                        <td class="grupo-td" align="center">
                            <asp:Image ID="ImgJogo62Time1" ImageUrl="~/Styles/Images/flags/Argentina.png" Height="24px"
                                Width="24px" runat="server" />
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtJogo62Time1" data-rank="1B2A1D2C" runat="server"> </asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtJogo62Time2" data-rank="1B2A1D2C" runat="server"> </asp:TextBox>
                        </td>
                        <td class="grupo-td" align="center">
                            <asp:Image ID="ImgJogo62Time2" ImageUrl="~/Styles/Images/flags/Argentina.png" Height="24px"
                                Width="24px" runat="server" />
                        </td>
                        <td align="left">
                            <asp:Label ID="lblJogo61Time2" runat="server" Text="Label" CssClass="n"></asp:Label>
                        </td>
                    </tr>
                </table>
                <div class="dt">
                    07/12 17:00</div>
            </div>
            <div class="ks ks-FINAL ks-1A2B1C2D1E2F1G2H1B2A1D2C1F2E1H2G" title="Final">
                <h2>
                    Final</h2>
                <table width="100%" style="color: Black">
                    <tr>
                        <td align="right">
                            <asp:Label ID="lblJogo62Time1" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="grupo-td" align="center">
                            <asp:Image ID="ImgJogo63Time1" ImageUrl="~/Styles/Images/flags/Argentina.png" Height="24px"
                                Width="24px" runat="server" />
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtJogo63Time1" data-rank="1B2A1D2C" runat="server"> </asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtJogo63Time2" data-rank="1B2A1D2C" runat="server"> </asp:TextBox>
                        </td>
                        <td class="grupo-td" align="center">
                            <asp:Image ID="ImgJogo63Time2" ImageUrl="~/Styles/Images/flags/Argentina.png" Height="24px"
                                Width="24px" runat="server" />
                        </td>
                        <td align="left">
                            <asp:Label ID="lblJogo62Time2" runat="server" Text="Label" CssClass="n"></asp:Label>
                        </td>
                    </tr>
                </table>
                <div class="dt">
                    07/13 16:00</div>
            </div>
            <div class="ks-l ks-l-1A2B1C2D">
            </div>
            <div class="ks-l ks-l-1E2F1G2H">
            </div>
            <div class="ks-l ks-l-1B2A1D2C">
            </div>
            <div class="ks-l ks-l-1F2E1H2G">
            </div>
            <div class="ks-l ks-l-1A2B1C2D1E2F1G2H">
            </div>
            <div class="ks-l ks-l-1B2A1D2C1F2E1H2G">
            </div>
            <div class="ks-l ks-l-3RDFINAL">
            </div>
            <div class="ks-l ks-l-3RD">
            </div>
            <div class="ks-l ks-l-FINAL">
            </div>
        </div>
    </div>
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    </form>
</body>
</html>
