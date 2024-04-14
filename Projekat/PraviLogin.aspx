<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PraviLogin.aspx.cs" Inherits="Projekat.PraviLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="max-width: 500px; margin: 50px auto; padding: 20px; background-color: violet; border-radius: 10px;">
    <asp:Label ID="Label5" runat="server" Text="LOGIN" Font-Size="30px" Font-Bold="true" ForeColor="Purple"></asp:Label>
    <br />
    <br />
        <div class="form-group">
    <asp:Label ID="label1" runat="server" Text="UserName:  " Font-Bold="true"></asp:Label>
    <asp:TextBox ID="ImeTxt" runat="server"></asp:TextBox>
            </div>
    <br />
        <div class="form-group">
    <asp:Label ID="Label4" runat="server" Text="--EmailAdd" Font-Bold="true"></asp:Label>
    <asp:TextBox ID="EmailTxt" runat="server"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="EmailTxt" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
    </div>
            <br />
        <div class="form-group">
    <asp:Label ID="label2" runat="server" Text="-Password::  " Font-Bold="true"></asp:Label>
    <asp:TextBox ID="TxtSifra" runat="server" TextMode="Password"></asp:TextBox>
            </div>
    <br />
    <br />
        <div class="form-control">
    <asp:Button ID="Button1" runat="server" Text="Login!" OnClick="Button1_Click" BorderStyle="Groove" BorderWidth="2px" BackColor="Black" ForeColor="White"/>
            </div>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
        </div>

</asp:Content>
