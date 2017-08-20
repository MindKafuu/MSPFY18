<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="end.aspx.cs" Inherits="TestWeb.end" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Toeic Game</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=0.5"/>
    <link rel="stylesheet" href="StyleSheet3.css" type="text/css" />
</head>
<body style="background-image: url(/pic/pic9.jpg)">
    <form id="form1" runat="server">
        <div class="text_bc">
            จบเกม คุณทำได้ <asp:Label ID="score" runat="server" Text="0"></asp:Label> &nbsp;คะแนน
        </div>

        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <div>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:ImageButton ID="ImageButton1" runat="server" Height="153px" ImageUrl="~/pic/pic12.png" OnClick="ImageButton1_Click" Width="169px" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:ImageButton ID="ImageButton2" runat="server" Height="153px" ImageUrl="~/pic/pic13.png" OnClick="ImageButton2_Click" Width="169px" />
        </div>
    </form>

</body>
</html>
