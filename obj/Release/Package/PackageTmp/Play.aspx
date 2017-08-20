<%@ Page Language="C#" EnableSessionState="True" AutoEventWireup="true" CodeBehind="Play.aspx.cs" Inherits="TestWeb.Play" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" >
    <title>Toeic Game</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=0.5"/>
    <link rel="stylesheet" href="StyleSheet2.css" type="text/css" />
</head>
<body style="background-image: url(/pic/page3.jpg)">
    <form id="form1" runat="server" style="font-size: 26px; font-weight: bold;">
        <div class="text_bc">
            เลือกคำตอบที่ถูกเพียงข้อเดียว
        </div>
        <div style="font-size: 48px">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Timer ID="Timer" runat="server" Interval="1000" OnTick="Timer_Tick" ></asp:Timer>
                    <asp:Label ID="time" runat="server" Text="5" ForeColor="#0000CC"></asp:Label>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        
        <br />
        <div class="text">
            <br />
            <asp:Label ID="vocab" runat="server" Text="Label" ></asp:Label>
        </div>
        <br />
        <br />
        <div>
            <asp:Button CssClass="button1" ID="Button1" runat="server" Height="114px" Text="Button" Width="350px" OnClick="Button1_Click" ClientIDMode="Static" UseSubmitBehavior="False" ValidateRequestMode="Enabled" /> &nbsp; <asp:Button CssClass="button2" ID="Button2" runat="server" Height="114px" Text="Button" Width="350px" OnClick="Button2_Click" ClientIDMode="Static" UseSubmitBehavior="false" ValidateRequestMode="Enabled" />
        </div>
        
        
    </form> 
    
</body>
</html>
