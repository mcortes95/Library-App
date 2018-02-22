<%@ Page Title="Log In" Language="C#" MasterPageFile="~/LibraryMaster.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="jumbotron text-center">
            
            <p>This page is meant to only be used by administrators of the website and employees of the Library.</p>

        </div>
    </div>

     <div class="container">
        <div class="row">
            <div class="col-lg-12">

                
                <asp:Label ID="uNameLabel" runat="server" Text="Username:"></asp:Label>
                <asp:TextBox ID="uNameBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="usernameVal" runat="server" ErrorMessage="*Required Field" ControlToValidate="uNameBox"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="pwordLabel" runat="server" Text="Password:"></asp:Label>
                <asp:TextBox ID="pwordBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="passwordVal" runat="server" ErrorMessage="*Required Field" ControlToValidate="pwordBox"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="errorLabel" runat="server" ForeColor="#FF3300"></asp:Label>
                <asp:Button ID="longinButton" runat="server" Text="Log In" OnClick="LonginButton_Click" />
            </div>
        </div>
    </div>

</asp:Content>

