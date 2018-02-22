 <%@ Page Title="Edit Database" Language="C#" MasterPageFile="~/LibraryMaster.master" AutoEventWireup="true" CodeFile="EditDB.aspx.cs" Inherits="EditDB" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
            </div>
        </div>
        <div class="row" >
            <div class="col-lg-1">
                <asp:Label ID="Label1" runat="server" Text="ISBN:"></asp:Label>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Author:"></asp:Label>               
                <br />
                <asp:Label ID="Label3" runat="server" Text="Title:"></asp:Label>
                <br />
            </div>
            <div class="col-lg-5">
                <asp:TextBox ID="isbnBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="isbnVal" runat="server" ErrorMessage="*Required Field" ControlToValidate="isbnBox" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="authorBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="authorVal" runat="server" ErrorMessage="*Required Field" ControlToValidate="authorBox" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                
                <br />
                <asp:TextBox ID="titleBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="titleVal" runat="server" ErrorMessage="*Required Field" ControlToValidate="titleBox" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                
                <br />
                <asp:Button ID="submitEntry" autopostback="true" runat="server" Text="Submit" OnClick="submitEntry_Click" />
            </div>
            <div class="col-lg-6">

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Books] WHERE [ISBN] = @ISBN" InsertCommand="INSERT INTO [Books] ([ISBN], [Author], [Title], [Availability]) VALUES (@ISBN, @Author, @Title, @Availability)" SelectCommand="SELECT * FROM [Books]" UpdateCommand="UPDATE [Books] SET [Author] = @Author, [Title] = @Title, [Availability] = @Availability WHERE [ISBN] = @ISBN">
                    <DeleteParameters>
                        <asp:Parameter Name="ISBN" Type="Int64" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ISBN" Type="Int64" />
                        <asp:Parameter Name="Author" Type="String" />
                        <asp:Parameter Name="Title" Type="String" />
                        <asp:Parameter Name="Availability" Type="Boolean" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Author" Type="String" />
                        <asp:Parameter Name="Title" Type="String" />
                        <asp:Parameter Name="Availability" Type="Boolean" />
                        <asp:Parameter Name="ISBN" Type="Int64" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" autopostback="true" AutoGenerateColumns="False" DataKeyNames="ISBN" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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

