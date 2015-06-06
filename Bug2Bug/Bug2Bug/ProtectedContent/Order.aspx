<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="Bug2Bug.order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <asp:Label ID="Label1" runat="server" BackColor="Silver" ForeColor="Black" Text="Your Shopping Cart"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <asp:ListBox ID="ListBox1" runat="server" Height="131px" Width="385px"></asp:ListBox>
    <br />
    <asp:Button ID="shoppingBtn" runat="server" BackColor="Silver" ForeColor="Black" PostBackUrl="~/ProtectedContent/Books.aspx" Text="Continue Shopping" OnClick="shoppingBtn_Click" Width="189px"></asp:Button>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="checkoutBtn" runat="server" BackColor="Silver" ForeColor="Black" OnClick="checkoutBtn_Click" Text="Checkout" Width="113px" PostBackUrl="~/ProtectedContent/Checkout.aspx"></asp:Button>
    <br />
    <br />
    <asp:Button ID="removeBtn" runat="server" BackColor="Silver" ForeColor="Black" Height="40px" OnClick="removeBtn_Click" Text="Remove" Width="95px" />
    <asp:Button ID="emptyBtn" runat="server" BackColor="Silver" ForeColor="Black" Height="40px" OnClick="emptyBtn_Click" Text="Empty" Width="95px" />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
