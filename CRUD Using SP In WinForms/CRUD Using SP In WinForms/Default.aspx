<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CRUD_Using_SP_In_WinForms._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <table border="1" cellpadding="5" cellspacing="20" style="border-collapse: collapse; font-family: Verdana; font-size: 12px;">
            <tr>
                <td>Property Name</td>
                <td>
                    <asp:TextBox ID="TxtPropertyName" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>Property Address</td>
                <td>
                    <asp:TextBox ID="TxtPropertyAddress" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>Property Price</td>
                <td>
                    <asp:TextBox ID="TxtPropertyPrice" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>Available Units (1 BHK)</td>
                <td>
                    <asp:TextBox ID="TxtAvailableUnits" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td colspan="2"><asp:HiddenField ID="TxtPropertyID" runat="server" /></td>                
            </tr>

            <tr>                
                <td colspan="2">
                    <asp:Button ID="BtnUpdate" runat="server" Text="Update Property" OnClick="BtnUpdate_Click" />
                    &nbsp;
                    <asp:Button ID="BtnInsert" runat="server" Text="Add Property" OnClick="BtnInsert_Click" />
                </td>
            </tr>

            <tr>
                <td>Output:</td>
                <td>
                    <asp:Label ID="OutputLabel" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table> 
    </div> 
    
    <div>
        <asp:GridView ID="GridRetrieveProperties" runat="server"></asp:GridView>
    </div>
</asp:Content>
