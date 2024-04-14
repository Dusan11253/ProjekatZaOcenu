<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Projekat.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="max-width: 500px; margin: 50px auto; padding: 20px; background-color: greenyellow; border-radius: 10px;">
    <asp:Label ID="Label1" runat="server" Text="" Font-Bold="true"></asp:Label>
        <br />
        <br />
        <br />
        <div style="background-color: white; height: 400px; width: 400px;">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="true" Height="400px" Width="400px" CssClass="table" Font-Bold="true"></asp:GridView>
            <asp:TextBox ID="TextBox1" runat="server" Visible="false"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Button"  Visible="false" OnClick="Button1_Click"/>
            </div>
        </div>
    </asp:Content>
