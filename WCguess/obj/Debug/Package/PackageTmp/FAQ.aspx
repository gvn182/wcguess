<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="FAQ.aspx.cs" Inherits="WCguess.FAQ" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $('.faqlink').next('.content').toggle();
            $('.faqlink').click(function () {
                $(this).next('.content').toggle();
            });
        });
    </script>
    <style type="text/css">
        .content
        {
            display: hidden;
        }
    </style>
    <div style="background-color: rgba(130,130,130,0.3); color: #FFF;">
        <h2>
            F.A.Q</h2>
        <a class="faqlink" href="#">Quantos pontos eu ganho se acertar o resultado do jogo exato?</a>
        <div class="content">
            10 pontos.</div>
        <br />
        <a class="faqlink" href="#">Quantos pontos eu ganho se acertar o time vencedor?</a>
        <div class="content">
            7 pontos.</div>
        <br />
        <a class="faqlink" href="#">Quantos pontos eu ganho se errar o time vencedor?</a>
        <div class="content">
            3 pontos</div>
        <br />
        <a class="faqlink" href="#">Quantos pontos eu ganho se indicar um amigo e ele se cadastrar
            com o <b>facebook?</b></a>
        <div class="content">
            1 ponto.</div>
        <br />
        <a class="faqlink" href="#">Quantos pontos eu ganho se indicar um amigo e ele se cadastrar
            sem usar o facebook?</a>
        <div class="content">
            Só é possivel ganhar pontos se seu amigo se cadastrar no WCGUESS com o facebook
            e com o seu link.</div>
        <br />
        <a class="faqlink" href="#">Qual o critério de desempate caso os vencedores tenham as
            mesmas pontuações?</a>
        <div class="content">
            O critério será a data de aposta definitiva.</div>
        <br />
        <a class="faqlink" href="#">Como será feita a entrega do premio?</a>
        <div class="content">
            O usuário será contactado pelo e-mail cadastrado no sistema, e será combinado com
            o mesmo a forma de entrega.</div>
        <br />
        <a class="faqlink" href="#">O que acontecerá caso o usuario vencedor não responda os
            contatos em 3 dias?</a>
        <div class="content">
            O premio será entregue ao vencedor mais proximo, no caso de 3º lugar, o mesmo será
            entregue para o 4º.</div>
        <br />
        <a class="faqlink" href="#">Quando será possivel visualizar o rank e os meus pontos?</a>
        <div class="content">
            Após o primeiro jogo da copa do mundo que acontece em 12/06/2014.</div>
        <br />
        <a class="faqlink" href="#">Como funciona a pagina meus grupos?</a>
        <div class="content">
            O sistema identifica quais seus amigos do facebook participam do WCGUESS e mostra sua posição em relação a eles.</div>
        <br />
    </div>
</asp:Content>
