<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Resultado.aspx.cs" Inherits="WCguess.Resultado" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <table style="width: 1024px; margin: auto auto auto auto;">
        <tr>
            <td>
                Grupo A
            </td>
            <td>
                Grupo B
            </td>
            <td>
                Grupo C
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GdrGrupoA" Font-Size="10px" Width="300px" runat="server" OnDataBound="GdrGrupoA_DataBound"
                    CellPadding="4" EnableModelValidation="True" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                </asp:GridView>
            </td>
            <td>
                <asp:GridView ID="GdrGrupoB" Font-Size="10px" Width="300px" runat="server" OnDataBound="GdrGrupoB_DataBound"
                    CellPadding="4" EnableModelValidation="True" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                </asp:GridView>
            </td>
            <td>
                <asp:GridView ID="GdrGrupoC" Font-Size="10px" Width="300px" runat="server" OnDataBound="GdrGrupoC_DataBound"
                    CellPadding="4" EnableModelValidation="True" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblTotalA" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblTotalB" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblTotalC" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Grupo D
            </td>
            <td>
                Grupo E
            </td>
            <td>
                Grupo F
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GdrGrupoD" Font-Size="10px" Width="300px" runat="server" OnDataBound="GdrGrupoD_DataBound"
                    CellPadding="4" EnableModelValidation="True" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                </asp:GridView>
            </td>
            <td>
                <asp:GridView ID="GdrGrupoE" Font-Size="10px" Width="300px" runat="server" OnDataBound="GdrGrupoE_DataBound"
                    CellPadding="4" EnableModelValidation="True" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                </asp:GridView>
            </td>
            <td>
                <asp:GridView ID="GdrGrupoF" Font-Size="10px" Width="300px" runat="server" OnDataBound="GdrGrupoF_DataBound"
                    CellPadding="4" EnableModelValidation="True" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblTotalD" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblTotalE" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblTotalF" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Grupo G
            </td>
            <td>
                Grupo H
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GdrGrupoG" Font-Size="10px" Width="300px" runat="server" OnDataBound="GdrGrupoG_DataBound"
                    CellPadding="4" EnableModelValidation="True" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                </asp:GridView>
            </td>
            <td>
                <asp:GridView ID="GdrGrupoH" Font-Size="10px" Width="300px" runat="server" OnDataBound="GdrGrupoH_DataBound"
                    CellPadding="4" EnableModelValidation="True" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblTotalG" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblTotalH" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>



                <tr>
                <td></td>
            <td>
                Finais
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
                
            </td>
            <td>
                <asp:GridView ID="GdrFinais" Font-Size="10px" Width="300px" runat="server" OnDataBound="GdrFinais_DataBound"
                    CellPadding="4" EnableModelValidation="True" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                </asp:GridView>
            </td>
            <td></td>
        </tr>
        <tr>
        <td>
        </td>
            <td>
                <asp:Label ID="lblTotalOitavas" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                
            </td>
        </tr>


    </table>
    </form>
</body>
</html>
