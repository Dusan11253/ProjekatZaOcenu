<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Projekat.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div style="max-width: 500px; margin: 50px auto; padding: 20px; background-color: lightblue; border-radius: 10px;">
        <div class="form-group" >
        <asp:Label ID="Label6" runat="server" Text="REGISTER" Font-Size="30px" Font-Bold="true" ForeColor="Blue" ></asp:Label>
        <br />
            </div>
    <br />
        <div class="form-group">
    <label for="ImeTxt" id="label1">Username    :</label>
        <asp:TextBox ID="ImeTxt" runat="server" />
            </div>
    <br />
        <div class="form-group">
        <label for="EmailTxt" id="label2">Email     :</label>
        <asp:TextBox ID="EmailTxt" runat="server" />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTxt" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
    </div>  
            <br />
        <div class="form-group">
        <label for="SifraTxt" id="label3">Password   :</label>
        <asp:TextBox ID="SifraTxt" runat="server" TextMode="Password" />
            </div>
    <br />

        <div class="form-group">
        <label for="SifraTxtconfirm" id="label4">Confirm Password:</label>
        <asp:TextBox ID="SifraTxtconfirm" runat="server" TextMode="Password" />
            </div>
    <br />
    <br />
        <div class="form-group">
        <asp:Button ID="Registerdugme" runat="server" Text="Register" Onclick="Registerdugme_Click" BorderStyle="Solid" BorderColor="Black" BorderWidth="3px" Height="50px" Width="100px" Font-Size="Large" CssClass="form-control" Font-Bold="true" />
       </div>
    <br />
    <br />
        <div class="form-group">
    <asp:Label ID="label5" runat="server" Text="" ></asp:Label>
            </div>
        
        </div>
</asp:Content>


