<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="Resultado.aspx.cs" Inherits="WCguess.Resultado1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Styles/Resultado.css" rel="stylesheet" type="text/css" />
    <div id="DivPreencherJogos" runat="server">
        <br />
        <h1 style="color: White">
            É necessário ter as apostas definitivas para consultar os resultados.</h1>
    </div>
    <div id="DivJogos" runat="server">
        <table style="width: 1110px; margin: auto auto auto auto;" cellpadding="0" cellspacing="0">
            <tr>
                <td>
                    <table id="tbGrupoA" runat="server" class="tbGrupo" cellpadding="0" cellspacing="0">
                        <tr class="trTitulo">
                            <td colspan="2" align="left">
                                pontos
                            </td>
                            <td colspan="3" align="right">
                                aposta
                                <br />
                                resultado
                            </td>
                        </tr>
                        <tr class="trGrupo">
                            <td colspan="5" align="center">
                                GRUPO A
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table id="tbGrupoB" runat="server" class="tbGrupo" cellpadding="0" cellspacing="0">
                        <tr class="trTitulo">
                            <td colspan="2" align="left">
                                pontos
                            </td>
                            <td colspan="3" align="right">
                                aposta
                                <br />
                                resultado
                            </td>
                        </tr>
                        <tr class="trGrupo">
                            <td colspan="5" align="center">
                                GRUPO B
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
                <td>
                    <table id="tbGrupoC" runat="server" class="tbGrupo" cellpadding="0" cellspacing="0">
                        <tr class="trTitulo">
                            <td colspan="2" align="left">
                                pontos
                            </td>
                            <td colspan="3" align="right">
                                aposta
                                <br />
                                resultado
                            </td>
                        </tr>
                        <tr class="trGrupo">
                            <td colspan="5" align="center">
                                GRUPO C
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
            <tr>
                <td>
                    <table id="tbGrupoD" runat="server" class="tbGrupo" cellpadding="0" cellspacing="0">
                        <tr class="trGrupo">
                            <td colspan="5" align="center">
                                GRUPO D
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
                <td>
                    <table id="tbGrupoE" runat="server" class="tbGrupo" cellpadding="0" cellspacing="0">
                        <tr class="trGrupo">
                            <td colspan="5" align="center">
                                GRUPO E
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
                <td>
                    <table id="tbGrupoF" runat="server" class="tbGrupo" cellpadding="0" cellspacing="0">
                        <tr class="trGrupo">
                            <td colspan="5" align="center">
                                GRUPO F
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
        <br />
        <table style="width: 750px; margin: auto auto auto auto;" cellpadding="0" cellspacing="0">
            <tr>
                <td>
                    <table id="tbGrupoG" runat="server" class="tbGrupo" cellpadding="0" cellspacing="0">
                        <tr class="trTitulo">
                            <td colspan="2" align="left">
                                pontos
                            </td>
                            <td colspan="3" align="right">
                                aposta
                                <br />
                                resultado
                            </td>
                        </tr>
                        <tr class="trGrupo">
                            <td colspan="5" align="center">
                                GRUPO G
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
                <td>
                    <table id="tbGrupoH" runat="server" class="tbGrupo" cellpadding="0" cellspacing="0">
                        <tr class="trTitulo">
                            <td colspan="2" align="left">
                                pontos
                            </td>
                            <td colspan="3" align="right">
                                aposta
                                <br />
                                resultado
                            </td>
                        </tr>
                        <tr class="trGrupo">
                            <td colspan="5" align="center">
                                GRUPO H
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
