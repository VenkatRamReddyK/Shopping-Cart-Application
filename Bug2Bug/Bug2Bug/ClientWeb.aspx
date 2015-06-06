<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClientWeb.aspx.cs" Inherits="Bug2Bug.ClientWeb" Async="true"%>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
        width: 118px;
    }
    .auto-style3 {
        width: 166px;
    }
    .auto-style4 {
        width: 143px;
    }
    .auto-style8 {
        width: 80px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <div>
        
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Add Author:</td>
                <td>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style8">
                                <asp:Label ID="Label1" runat="server" Text="First Name :"></asp:Label>
                            </td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtFname" runat="server" Width="150px"></asp:TextBox>
                            </td>
                            <td class="auto-style8">
                                <asp:Label ID="Label2" runat="server" Text="Last Name :"></asp:Label>
                            </td>
                            <td class="auto-style4">
                                <asp:TextBox ID="txtLname" runat="server" Width="150px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Button ID="btnadd" runat="server" OnClick="btnadd_Click" Text="Create" BackColor="Silver" ForeColor="Black" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Author Search :</td>
                <td>
                    <asp:TextBox ID="txtsearch" runat="server"></asp:TextBox>
&nbsp;&nbsp;
                    <asp:Button ID="btngo" runat="server" OnClick="btngo_Click" Text="Find" Width="45px" BackColor="Silver" ForeColor="Black" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Result:</td>
                <td>
                    <asp:ListBox ID="ListBox1" runat="server" Height="128px" Width="309px"></asp:ListBox>
                </td>
            </tr>
        </table>
        
    </div>
</asp:Content>


