<%@ Page Title="Search Books" Language="C#" MasterPageFile="~/LibraryMaster.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container">
        <div class="jumbotron text-center">
            <h1>Search </h1>
            <p>This page allows you to browse out entire collection of books and lets you sort by author, title, or availability.</p>

        </div>
    </div>
    <div class="container">
        <div class="row" >
            <div class="col-lg-6">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:DropDownList ID="searchCat" runat="server">
                    <asp:ListItem >Author</asp:ListItem>
                    <asp:ListItem>Title</asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="searchButton" runat="server" Text="Search" />
                
            </div>  
            <div class="col-lg-6">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Books]"></asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ISBN" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="ISBN" HeaderText="ISBN" ReadOnly="True" SortExpression="ISBN" />
                        <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                        <asp:CheckBoxField DataField="Availability" HeaderText="Availability" SortExpression="Availability" />
                    </Columns>
                </asp:GridView>
            </div>
            
        </div>
        
    </div>

</asp:Content>

