<%@ Page Title="Home" Language="C#" MasterPageFile="~/LibraryMaster.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container">
        <div class="jumbotron text-center">
            <h1>Northeastern Illinois University Library</h1>
            <p>This website is for the Northeastern Illinois University Library. It allows you to browse through our extensive collection of books and search by ISBN. </p> 
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <p>Select your favorite book from the list: </p>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>Lord of the Flies</asp:ListItem>
                <asp:ListItem>Animal Farm</asp:ListItem>
                <asp:ListItem>To Kill a Mockingbird</asp:ListItem>
                <asp:ListItem>None of the Above</asp:ListItem>
            </asp:DropDownList>
        </div>
    </div>
    
</asp:Content>

