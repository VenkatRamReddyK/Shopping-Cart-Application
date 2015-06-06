<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="Bug2Bug.checkout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 32px;
        }
        .auto-style3 {
            height: 32px;
            width: 94px;
        }
        .auto-style4 {
        width: 94px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="labelShoppingCart" runat="server" Text="Your Shopping Cart :" BackColor="Silver" ForeColor="Black"></asp:Label>
    <br />
    <br />
    <asp:ListBox ID="listBoxShoppingCart" runat="server" Height="150px" Width="450px"></asp:ListBox>
    <br />
    <br />
    <asp:Label ID="labelPayment" runat="server" BackColor="Silver" ForeColor="Black" Height="33px" Text="Types of Payment" Width="155px"></asp:Label>
&nbsp;<br />
    <asp:RadioButton ID="masterCard" runat="server" Text="Master Card"  GroupName="cards" Width="100px" />
    <asp:RadioButton ID="visa" runat="server"  Text="Visa Card" GroupName="cards" Width="100px" />
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">
    <asp:Label ID="labelCreditCardNumber" runat="server" BackColor="Silver" ForeColor="Black" Height="23px" style="margin-top: 0px" Text="Card Number" Width="89px"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="textBoxCardNumber" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
    <asp:Label ID="labelSalesTax" runat="server" BackColor="Silver" ForeColor="Black" Height="23px" Text="Sales tax" Width="88px"></asp:Label>
            </td>
            <td>
                <asp:Label ID="labelSalesTaxResult" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
    <asp:Label ID="labelCost" runat="server" BackColor="Silver" ForeColor="Black" Height="21px" Text="Total Cost" Width="88px"></asp:Label>
            </td>
            <td>
    <asp:Label ID="labelCostResult" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <asp:Button ID="finishBtn" runat="server" Height="38px" PostBackUrl="~/ProtectedContent/Final.aspx" Text="Finish" BackColor="Silver" ForeColor="Black" />&nbsp;&nbsp;
    <asp:LinkButton ID="shoppingBtn" runat="server" BackColor="Silver" ForeColor="Black" PostBackUrl="~/ProtectedContent/Books.aspx">Continue Shopping</asp:LinkButton>&nbsp;&nbsp;
    <asp:LinkButton ID="btnMyOrders" runat="server" BackColor="Silver" ForeColor="Black" PostBackUrl="~/ProtectedContent/Order.aspx" >My Order</asp:LinkButton>
</asp:Content>
