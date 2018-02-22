<%@ Page Title="" Language="C#" MasterPageFile="~/LibraryMaster.master" AutoEventWireup="true" CodeFile="Users.aspx.cs" Inherits="Users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Username], [fName], [lName] FROM [Users]"></asp:SqlDataSource>
    <br />
    <br />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Username" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Username" HeaderText="Username" ReadOnly="True" SortExpression="Username" />
            <asp:BoundField DataField="fName" HeaderText="fName" SortExpression="fName" />
            <asp:BoundField DataField="lName" HeaderText="lName" SortExpression="lName" />
        </Columns>
    </asp:GridView>
    <br />
    <br />

</asp:Content>

