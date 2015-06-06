<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Bug2Bug.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <p>
    <br />
</p>
<p>
</p>
<p style="margin-left: 120px">
&nbsp;
</p>
<p style="margin-left: 200px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Login ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" ForeColor="#CC0000"></asp:Label>
</p>
<p style="margin-left: 200px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
</p>
<p>
</p>
<p style="margin-left: 360px">
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" BackColor="Silver" ForeColor="Black" />
    <asp:Button ID="Button2" runat="server" Text="Cancel" BackColor="Silver" ForeColor="Black" />
</p>
<p style="margin-left: 360px">
    &nbsp;</p>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>
