<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="Rank.aspx.cs" Inherits="WCguess.Rank" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-5 col-lg-4 col-lg-offset-1">
        <div class="profile-panel text-center">
            <asp:Image ID="imgFoto" runat="server" />
            <h2>
                <asp:Label ID="lblNome" runat="server" Text="Label"></asp:Label></h2>
            <p>
                <asp:Label ID="lblPosicao" runat="server" Text="Label"></asp:Label>º posição</p>
            <p>
                <asp:Label ID="lblPontos" runat="server" Text="Label"></asp:Label>
                pontos</p>
        </div>
        <div class="social-sharing text-center">
            <table style="width: 100%">
                <tr>
                    <td align="right">
                        <asp:Image ID="imgFacebook" Style="cursor: pointer" ImageUrl="~/Styles/Images/facebook.png"
                            runat="server" />
                    </td>
                    <td align="left">
                        <asp:Image ID="imgTwitter" Style="cursor: pointer" ImageUrl="~/Styles/Images/twitter.png"
                            runat="server" />
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <div class="col-md-5 col-lg-4 top-ranking-header">
        <h4>
            Ranking</h4>
        <hr />
        <span class="pull-right">pontos</span>
    </div>
    <div class="col-md-5 col-lg-4 top-ranking">
        <table id="TableRank" style="width: 100%" runat="server">
        </table>
    </div>
</asp:Content>
