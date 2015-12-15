<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Query.aspx.cs" Inherits="WCguess.Query" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="TextBox1" TextMode="MultiLine" Width="200px" Height="200px" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Non query" onclick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="query" onclick="Button2_Click" />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:GridView ID="GdrResultado" runat="server">
        </asp:GridView>

        <br />
        
    
    </div>
    </form>
</body>
</html>
