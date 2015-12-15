<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="Rank.aspx.cs" Inherits="WCguess.Rank" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-5 col-lg-4 col-lg-offset-1">
        <div class="profile-panel text-center" id="divPlayerRank" runat="server">
            <asp:Image ID="imgFoto" Width="110px" Height="100px" runat="server" />
            <h2>
                <asp:Label ID="lblNome" runat="server" Text="Label"></asp:Label></h2>
            <p>
                <asp:Label ID="lblPosicao" runat="server" Text="Label"></asp:Label>º posição</p>
            <p>
                <asp:Label ID="lblPontos" runat="server" Text="Label"></asp:Label>
                pontos</p>
        </div>
        <div class="social-sharing text-center" id="divSocialMedia" runat="server">
            <table style="width: 100%">
                <tr>
                    <td align="right">
                        <a href="http://www.facebook.com/sharer.php?s=100&p[title]=World Cup Guess&p[summary]=Aposte os resultados da copa do mundo de 2014 e ganhe premios, e gratis!&p[url]=http://www.wcguess.com&p[images][0]=http://www.wcguess.com/Styles/images/background.jpg"
                            target="_blank">
                            <asp:Image ID="imgFacebook" Style="cursor: pointer" ImageUrl="~/Styles/Images/facebook.png"
                                runat="server" />
                        </a>
                    </td>
                    <td id="TdTwitter" align="left" runat="server">
                    </td>
                </tr>
            </table>
        </div>
        <div class="profile-panel text-center" id="divSorry" runat="server">
            <h1>
                Seu rank ainda não foi processado, volte mais tarde.</h1>
        </div>
    </div>
    <div class="col-md-5 col-lg-4 top-ranking" id="divAllRanks" runat="server">
        <table id="TableRank" style="width: 100%" runat="server">
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
    <div class="col-md-5 col-lg-4 top-ranking" id="divAllRanksSorry" runat="server">
        <br />
        <br />
        <h1>
            O top 15 ainda não foi processado.</h1>
    </div>
</asp:Content>
