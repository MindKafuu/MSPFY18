<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="TestWeb.index" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Toeic Game</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=0.5"/>
    <link rel="stylesheet" href="StyleSheet1.css" type="text/css" />
    <style type="text/css">
        #form1 {
            text-align: center;
        }
    </style>
</head>
<body style="background-image: url(/pic/bg.png)">
    <form id="form1" runat="server">
        <p class="text_bc">
            ยินดีต้อนรับสู่เว็บไซต์ที่จะให้คุณได้ทดสอบความรู้เกี่ยวกับคำศัพท์ Toeic ว่าคุณรู้ความหมายมากน้อยเพียงใด ถ้าคุณพร้อมแล้ว ไปเริ่มกันเลย!!</p>
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
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
       <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="False" Height="153px" ImageAlign="Middle" ImageUrl="~/pic/pic15.png" Width="169px" OnClick="ImageButton1_Click" />
    </form>
</body>
</html>
