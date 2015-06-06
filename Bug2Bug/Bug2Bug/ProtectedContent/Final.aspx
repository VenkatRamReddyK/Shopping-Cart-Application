<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Final.aspx.cs" Inherits="Bug2Bug.final" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <asp:Label ID="Label1" runat="server" BackColor="Silver" ForeColor="Black" Height="29px" Text="Order Confirmation" Width="166px"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label2" runat="server" BackColor="Silver" ForeColor="Black" Text="Thank you for shopping with us ! Your order has been confirmed."></asp:Label>
    &nbsp;Your order will be delivered by
    <asp:Label ID="lbdate" runat="server" Text="Label"></asp:Label>
    <br />
    The total is :
    <asp:Label ID="labelTotalCostResult" runat="server" Text="Label" BackColor="Silver" ForeColor="Black"></asp:Label>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <br />
    <asp:LinkButton ID="LinkGuestBook" runat="server" BackColor="Silver" ForeColor="Black" Height="24px" PostBackUrl="~/ProtectedContent/Guestbook.aspx" Width="101px">Guestbook</asp:LinkButton>
    <br />
</asp:Content>
