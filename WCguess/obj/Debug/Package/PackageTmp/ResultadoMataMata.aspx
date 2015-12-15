<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="ResultadoMataMata.aspx.cs" Inherits="WCguess.ResultadoMataMata" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Styles/Resultado.css" rel="stylesheet" type="text/css" />
    <div id="DivPreencherJogos" runat="server">
        <br />
        <h1 style="color: White">
            É necessário ter as apostas definitivas para consultar os resultados.</h1>
    </div>
    <div id="DivJogos" runat="server">
        <table style="width: 750px; margin: auto auto auto auto;" cellpadding="0" cellspacing="0">
            <tr>
                <td>
                    <table id="tbAposta" runat="server" class="tbGrupo" cellpadding="0" cellspacing="0">
                     <tr class="trTitulo">
                            <td colspan="5" align="left">
                                pontos
                            </td>
                        </tr>
                        <tr class="trGrupo">
                            <td colspan="5" align="center">
                                APOSTA
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table id="tbResultado" runat="server" class="tbGrupo" cellpadding="0" cellspacing="0">
                     <tr class="trTitulo">
                            <td colspan="5" align="left">
                             
                            </td>
                        </tr>
                        <tr class="trGrupo">
                            <td colspan="5" align="center">
                                RESULTADO
                            </td>
                        </tr>
                        <%--<tr class="trResultado">
                        <td class="tdPontos" align="center">
                            13
                        </td>
                        <td class="tdTime" align="center">
                            Brasil
                        </td>
                        <td class="tdX" align="center">
                            X
                        </td>
                        <td class="tdTime" align="center">
                            Croacia
                        </td>
                        <td class="tdResultado">
                            9:0
                            <br />
                            1:0
                        </td>
                    </tr>--%>
                    </table>
                </td>
               
            </tr>
        </table>
    </div>
</asp:Content>
